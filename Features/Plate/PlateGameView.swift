//
//  PlateGameView.swift
//  Aventuras con Nutri
//
//  Created by Victoria García on 21/09/25.
//

import SwiftUI

struct PlateGameView: View {
    var body: some View {
        ZStack {
            // Fondo azul exacto
            Color(hex: "#46afa4").ignoresSafeArea()

            // Layout ilustrado
            Image("screen_plate")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()

            // Colocación relativa de los 4 slots (usamos 3)
            GeometryReader { geo in
                let w = geo.size.width
                let h = geo.size.height

                // Coordenadas relativas medidas sobre screen_plate (aprox)
                // TL, TR, BR; dejamos BL vacío
                let topLeft  = CGPoint(x: w * 0.26, y: h * 0.74)
                let topRight = CGPoint(x: w * 0.74, y: h * 0.74)
                let botRight = CGPoint(x: w * 0.74, y: h * 0.90)

                // Tamaño del ícono dentro del slot
                let iconSize = min(w, h) * 0.18

                Group {
                    FoodButton(imageName: "fruit",   size: iconSize)
                        .position(topLeft)

                    FoodButton(imageName: "vegie",   size: iconSize)
                        .position(topRight)

                    FoodButton(imageName: "junk",    size: iconSize)
                        .position(botRight)
                }
            }
            .allowsHitTesting(true)
        }
    }
}

private struct FoodButton: View {
    let imageName: String
    let size: CGFloat

    var body: some View {
        Button(action: { print("\(imageName) tapped") }) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .shadow(radius: 3)
                .accessibilityLabel(Text(imageName))
        }
    }
}

// HEX -> Color
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: (a,r,g,b) = (255,(int>>8)*17,(int>>4&0xF)*17,(int&0xF)*17)
        case 6: (a,r,g,b) = (255,int>>16,int>>8&0xFF,int&0xFF)
        case 8: (a,r,g,b) = (int>>24,int>>16&0xFF,int>>8&0xFF,int&0xFF)
        default:(a,r,g,b) = (255,0,0,0)
        }
        self.init(.sRGB, red: Double(r)/255, green: Double(g)/255,
                  blue: Double(b)/255, opacity: Double(a)/255)
    }
}
