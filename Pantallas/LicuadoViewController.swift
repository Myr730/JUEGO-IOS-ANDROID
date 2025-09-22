//
//  LicuadoViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 21/09/25.
//

import UIKit

class LicuadoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "fondolicuado")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        let flechaImageView = UIImageView(image: UIImage(named: "flecha"))
        flechaImageView.translatesAutoresizingMaskIntoConstraints = false
        flechaImageView.isUserInteractionEnabled = true
        flechaImageView.contentMode = .scaleAspectFit
        view.addSubview(flechaImageView)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToClasificar))
        flechaImageView.addGestureRecognizer(tapGesture)
        
        NSLayoutConstraint.activate([
            flechaImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.02),
            flechaImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            flechaImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            flechaImageView.heightAnchor.constraint(equalTo: flechaImageView.widthAnchor)
        ])
       
        
        let labelImageView = UIImageView(image: UIImage(named: "banner"))
        labelImageView.translatesAutoresizingMaskIntoConstraints = false
        labelImageView.contentMode = .scaleAspectFit
        view.addSubview(labelImageView)

        NSLayoutConstraint.activate([
            labelImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -view.bounds.height * 0.01),
            
            labelImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            labelImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            labelImageView.heightAnchor.constraint(equalTo: labelImageView.widthAnchor, multiplier: 1.0)
        ])
        let fruitStackInBanner = UIStackView()
        fruitStackInBanner.translatesAutoresizingMaskIntoConstraints = false
        fruitStackInBanner.axis = .horizontal
        fruitStackInBanner.alignment = .center
        fruitStackInBanner.distribution = .equalSpacing
        fruitStackInBanner.spacing = 11
        labelImageView.addSubview(fruitStackInBanner)

        NSLayoutConstraint.activate([
            fruitStackInBanner.centerXAnchor.constraint(equalTo: labelImageView.centerXAnchor),
            fruitStackInBanner.topAnchor.constraint(equalTo: labelImageView.topAnchor, constant: 95),
            fruitStackInBanner.leadingAnchor.constraint(greaterThanOrEqualTo: labelImageView.leadingAnchor, constant: 10),
            fruitStackInBanner.trailingAnchor.constraint(lessThanOrEqualTo: labelImageView.trailingAnchor, constant: -10)
        ])

        let fresa1 = UIImageView(image: UIImage(named: "fresa"))
        let fresa2 = UIImageView(image: UIImage(named: "fresa"))
        let banana1 = UIImageView(image: UIImage(named: "banana"))

        let fruitsInBanner = [fresa1, fresa2, banana1]

        for fruit in fruitsInBanner {
            fruit.contentMode = .scaleAspectFit
            fruit.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                fruit.widthAnchor.constraint(equalToConstant: 50),
                fruit.heightAnchor.constraint(equalToConstant: 50)
            ])
            fruitStackInBanner.addArrangedSubview(fruit)
        }
        let trayView = UIView()
                trayView.translatesAutoresizingMaskIntoConstraints = false
                trayView.backgroundColor = UIColor(red: 153/255.0, green: 79/255.0, blue: 21/255.0, alpha: 1.0) // #994F15
                view.addSubview(trayView)
                
                NSLayoutConstraint.activate([
                    trayView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                    trayView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    trayView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    trayView.heightAnchor.constraint(equalToConstant: 120)
                ])
        
        let fruitStack = UIStackView()
                fruitStack.translatesAutoresizingMaskIntoConstraints = false
                fruitStack.axis = .horizontal
                fruitStack.alignment = .center
                fruitStack.distribution = .equalSpacing
                fruitStack.spacing = 12
                trayView.addSubview(fruitStack)
                
                NSLayoutConstraint.activate([
                    fruitStack.topAnchor.constraint(equalTo: trayView.topAnchor, constant: 10),
                    fruitStack.bottomAnchor.constraint(equalTo: trayView.bottomAnchor, constant: -10),
                    fruitStack.leadingAnchor.constraint(equalTo: trayView.leadingAnchor, constant: 20),
                    fruitStack.trailingAnchor.constraint(equalTo: trayView.trailingAnchor, constant: -20)
                ])
                
                let uva = UIImageView(image: UIImage(named: "uva"))
                let manzana = UIImageView(image: UIImage(named: "manzana"))
                let banana = UIImageView(image: UIImage(named: "banana"))
                let fresa = UIImageView(image: UIImage(named: "fresa"))
                let naranja = UIImageView(image: UIImage(named: "naranja"))
                
                let fruits = [uva, manzana, banana, fresa, naranja]
                
                for fruit in fruits {
                    fruit.contentMode = .scaleAspectFit
                    fruit.translatesAutoresizingMaskIntoConstraints = false
                    NSLayoutConstraint.activate([
                        fruit.widthAnchor.constraint(equalToConstant: 60),
                        fruit.heightAnchor.constraint(equalToConstant: 60)
                    ])
                    fruitStack.addArrangedSubview(fruit)
                }
        
    }
    @objc func goToClasificar() {
            let clasificarVC = ClasificarViewController()
            clasificarVC.modalPresentationStyle = .fullScreen
            present(clasificarVC, animated: true, completion: nil)
        }
}
