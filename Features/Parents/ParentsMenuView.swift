//
//  ParentsMenuView.swift
//  Aventuras con Nutri
//
//  Created by Victoria García on 21/09/25.
//

import SwiftUI

struct ParentsMenuView: View {
    var body: some View {
        AppTheme {
            NavigationView {
                ZStack(alignment: .top) {
                    Color(hex: "#F7F3EA").ignoresSafeArea()

                    VStack(spacing: Spacing.s16) {

                        // Barra superior con título (estilo mock)
                        HStack(spacing: Spacing.s12) {
                            // Botón atrás (deco; si navegas real, te regresa solo)
                            Image(systemName: "chevron.left")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundStyle(.white)
                                .frame(width: 34, height: 34)
                                .background(Circle().fill(.black.opacity(0.7)))
                                .overlay(Circle().stroke(.white, lineWidth: 2))
                                .opacity(0.9)

                            Spacer()

                            Text("parents_section_title")
                                .font(TypeScale.titleM)
                                .foregroundStyle(.white)
                                .padding(.vertical, Spacing.s8)
                                .padding(.horizontal, Spacing.s16)
                                .background(
                                    Capsule().fill(.black.opacity(0.35))
                                )

                            Spacer()
                            // Espaciador para centrar el título
                            Color.clear.frame(width: 34, height: 34)
                        }
                        .padding(.horizontal, Spacing.s16)
                        .padding(.top, Spacing.s12)

                        // Menú principal
                        VStack(spacing: Spacing.s16) {
                            NavigationLink {
                                ParentsProgressView()   // dummy
                            } label: {
                                ParentsMenuItem(
                                    title: "parents_menu_progress",
                                    systemImage: "chart.bar.fill",
                                    bg: Color(hex:"#F7B733")
                                )
                            }

                            NavigationLink {
                                ParentsWeightHeightView()
                            } label: {
                                ParentsMenuItem(
                                    title: "parents_menu_weight_height",
                                    systemImage: "scalemass.fill",
                                    bg: Color(hex:"#F39C12")
                                )
                            }

                            NavigationLink {
                                ParentsTipsRecipesView()
                            } label: {
                                ParentsMenuItem(
                                    title: "parents_menu_tips",
                                    systemImage: "book.fill",
                                    bg: Color(hex:"#2BBBAD")
                                )
                            }

                            NavigationLink {
                                ParentsPlaytimeView()
                            } label: {
                                ParentsMenuItem(
                                    title: "parents_menu_playtime",
                                    systemImage: "alarm.fill",
                                    bg: Color(hex:"#F06292")
                                )
                            }
                        }
                        .padding(.horizontal, Spacing.s16)

                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview { ParentsMenuView() }
