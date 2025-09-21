//
//  HomeView.swift
//  Aventuras con Nutri
//
//  Created by Victoria García on 21/09/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        AppTheme {
            ZStack(alignment: .top) {
                // Fondo
                Image("background_home")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                // SCRIM arriba (puedes quitarlo también si ya no hay título)
                LinearGradient(
                    colors: [.black.opacity(0.4), .clear],
                    startPoint: .top, endPoint: .center
                )
                .ignoresSafeArea()

                VStack {
                    Spacer()

                    // Panel de botones (vidrio)
                    GlassPanel {
                        PrimaryButton(title: "btn_play")
                        PrimaryButton(title: "btn_parents")
                        SecondaryButton(title: "btn_settings")
                    }
                    .frame(maxWidth: 360)
                    .padding(.horizontal, Spacing.s24)
                    .padding(.bottom, Spacing.s24)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

#Preview {
    HomeView()
}
