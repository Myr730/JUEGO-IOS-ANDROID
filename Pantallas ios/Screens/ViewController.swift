//
//  ViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 20/09/25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swiftUIView = HomeView(onParentsTap: {[weak self] in
            self?.goToParents()
        },
            onPadresTap: {[weak self] in
            self?.goToPadres()
        },
            onNivelesTap: {[weak self] in
            self?.goToNiveles()
        }
        )
            
        let hostingController = UIHostingController(rootView: swiftUIView)
            
        addChild(hostingController)
        hostingController.view.frame = view.bounds
        hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
    }
        
    @objc func goToParents() {
        let parentsVC = ParentsViewController()
        parentsVC.modalPresentationStyle = .fullScreen
        present(parentsVC, animated: true, completion: nil)
    }
    
    @objc func goToPadres() {
        let padresVC = PadresViewController()
        padresVC.modalPresentationStyle = .fullScreen
        present(padresVC, animated: true, completion: nil)
    }
    
    @objc func goToNiveles() {
        let nivelesVC = NivelesViewController()
        nivelesVC.modalPresentationStyle = .fullScreen
        present(nivelesVC, animated: true, completion: nil)
    }
                        
    struct HomeView: View {
        var onParentsTap: () -> Void
        var onPadresTap: () -> Void
        var onNivelesTap: () -> Void
        var body: some View {
            AppTheme {
                ZStack(alignment: .top) {
                    // Fondo
                    VStack {
                        Spacer()
                        
                        Image("Inicio")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                            .frame(height: UIScreen.main.bounds.height)
                            .clipped()
                            .ignoresSafeArea()
                    }

                    Image("logo_blanco")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 75)
                        .padding(.top, 60)
                        .padding(.trailing, 255)
                    
                    VStack{
                        Image("inicioTitulo")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 300)
                            .padding(.top, 115)
                        
                        Image("inicioNutri")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 300)
                            .padding(.top, -25)
                            .padding(.trailing, -20)
                    }
                    
                    
                    VStack {
                        Spacer()
                            Button(action: onNivelesTap) {
                                Image("jugar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)
                            }

                            Button(action: onPadresTap) {
                                Image("padres")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)
                            }

                            Button(action: onParentsTap) {
                                Image("ajustes")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)
                            } //Creo que no lo vamos a usar, se puede borrar.

                        .frame(maxWidth: 360)
                        .padding(.bottom, 95)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.trailing, 155)
                }
            }
        }
    }
}
