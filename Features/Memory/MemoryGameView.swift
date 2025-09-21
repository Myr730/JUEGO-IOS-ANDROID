//
//  MemoryGameView.swift
//  Aventuras con Nutri
//
//  Created by Victoria García on 21/09/25.
//

import SwiftUI

struct MemoryGameView: View {
    private let columnsCount = 3
    private let rowsCount    = 4
    private let gridSpacing  = Spacing.s16

    var body: some View {
        AppTheme {
            ZStack {
                // Mantel de fondo
                Image("background_memory")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                GeometryReader { geo in
                    // Márgenes y alturas “reservadas”
                    let safeTop      = geo.safeAreaInsets.top
                    let safeBottom   = geo.safeAreaInsets.bottom
                    let outerHPad: CGFloat = Spacing.s16
                    let titleHeight: CGFloat = 60          // aprox. del título
                    let panelHeight: CGFloat = 140         // aprox. del CardContainer

                    // Área disponible para la grilla
                    let availableW = geo.size.width - (outerHPad * 2)
                    let availableH = geo.size.height - safeTop - safeBottom
                                     - titleHeight - panelHeight - (gridSpacing * 3)

                    // Tamaño por ancho (3 columnas)
                    let cardW_byWidth = (availableW - (gridSpacing * CGFloat(columnsCount - 1)))
                                        / CGFloat(columnsCount)

                    // Tamaño por alto (4 filas)
                    let totalSpacingH = gridSpacing * CGFloat(rowsCount - 1)
                    let cardH_byHeight = (availableH - totalSpacingH) / CGFloat(rowsCount)
                    let cardW_byHeight = cardH_byHeight * 0.68

                    // Elegimos el menor para que SIEMPRE quepa
                    let cardW = max(40, min(cardW_byWidth, cardW_byHeight))
                    let gridMaxWidth = (cardW * CGFloat(columnsCount)) + (gridSpacing * CGFloat(columnsCount - 1))

                    VStack(spacing: gridSpacing) {
                        // Título
                        Text("game_title_memory")
                            .font(TypeScale.titleL)
                            .multilineTextAlignment(.center)
                            .padding(.top, Spacing.s12)
                            .shadow(radius: 3)

                        // Grilla 3x4
                        LazyVGrid(
                            columns: Array(repeating: GridItem(.flexible(), spacing: gridSpacing), count: columnsCount),
                            spacing: gridSpacing
                        ) {
                            ForEach(0..<(columnsCount * rowsCount), id: \.self) { _ in
                                MemoryCardView(width: cardW)
                            }
                        }
                        .frame(maxWidth: gridMaxWidth)
                        .padding(.horizontal, outerHPad)

                        // Panel inferior
                        CardContainer {
                            Text("panel_status_title").font(TypeScale.titleM)
                            HStack { Text("panel_points"); Spacer(); Text("120") }
                            HStack { Text("panel_time");   Spacer(); Text("01:00") }
                        }
                        .padding(.horizontal, outerHPad)
                        .padding(.bottom, Spacing.s8)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    .ignoresSafeArea(edges: [.bottom]) // el fondo ya cubre; contenido respeta top
                }
            }
        }
    }
}

#Preview { MemoryGameView() }
