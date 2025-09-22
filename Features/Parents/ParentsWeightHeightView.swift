//
//  ParentsWeightHeightView.swift
//  Aventuras con Nutri
//
//  Created by Victoria García on 21/09/25.
//

import SwiftUI
struct ParentsWeightHeightView: View {
    var body: some View {
        AppTheme {
            Text("PESO/TALLA (maqueta)").font(TypeScale.titleM)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hex:"#FFF7EC").ignoresSafeArea())
        }
    }
}
