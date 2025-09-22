//
//  ParentsPlaytimeView.swift
//  Aventuras con Nutri
//
//  Created by Victoria García on 21/09/25.
//

import SwiftUI
struct ParentsPlaytimeView: View {
    var body: some View {
        AppTheme {
            Text("TIEMPO DE JUEGO (maqueta)").font(TypeScale.titleM)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hex:"#FDE9F1").ignoresSafeArea())
        }
    }
}
