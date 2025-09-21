//
//  ContentView.swift
//  Aventuras con Nutri
//
//  Created by Victoria García on 21/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AppTheme {
            VStack(spacing: Spacing.s16) {
                
                // Texto con tipografía y color
                Text(NSLocalizedString("home_title", comment: ""))
                    .font(TypeScale.titleXL)
                    .foregroundStyle(AppColor.primary)
                
                // Botón con tu componente
                PrimaryButton(title: "btn_play")
            }
            .padding(Spacing.s24)
        }
    }
}

#Preview {
    ContentView()
}
