//
//  ViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 20/09/25.
//

import UIKit

class ViewController: UIViewController {
    var currentIndex = 1
    let maxNivel = 5
    var nivel1ImageView = UIImageView(image: UIImage(named: "Nivel1"))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "fondonutri")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        let flecha = UIImageView(image: UIImage(named: "flecha"))
        flecha.translatesAutoresizingMaskIntoConstraints = false
        flecha.isUserInteractionEnabled = true
        flecha.contentMode = .scaleAspectFit
        view.addSubview(flecha)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToAhorcado))
        flecha.addGestureRecognizer(tapGesture)
        
        NSLayoutConstraint.activate([
            flecha.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.02),
            flecha.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            flecha.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            flecha.heightAnchor.constraint(equalTo: flecha.widthAnchor)
        ])
       
        
        let labelImageView = UIImageView(image: UIImage(named: "label"))
        labelImageView.translatesAutoresizingMaskIntoConstraints = false
        labelImageView.contentMode = .scaleAspectFit
        view.addSubview(labelImageView)
        
        NSLayoutConstraint.activate([
            labelImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.07),
            labelImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            labelImageView.heightAnchor.constraint(equalTo: labelImageView.widthAnchor, multiplier: 0.5)
        ])

        nivel1ImageView = UIImageView(image: UIImage(named: "Nivel\(currentIndex)"))
        nivel1ImageView.translatesAutoresizingMaskIntoConstraints = false
        nivel1ImageView.contentMode = .scaleAspectFit
        nivel1ImageView.isUserInteractionEnabled = true
        view.addSubview(nivel1ImageView)
        
        let clickGesture = UITapGestureRecognizer(target: self, action: #selector(handleNivelTap))
        nivel1ImageView.addGestureRecognizer(clickGesture)

        NSLayoutConstraint.activate([
            nivel1ImageView.topAnchor.constraint(equalTo: labelImageView.bottomAnchor, constant: 10),
            nivel1ImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nivel1ImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            nivel1ImageView.heightAnchor.constraint(equalTo: nivel1ImageView.widthAnchor, multiplier: 0.4)
        ])

        let nutriImageView = UIImageView(image: UIImage(named: "nutri"))
        nutriImageView.translatesAutoresizingMaskIntoConstraints = false
        nutriImageView.contentMode = .scaleAspectFit
        view.addSubview(nutriImageView)
        
        let izqImageView = UIImageView(image: UIImage(named: "IZQ"))
        izqImageView.translatesAutoresizingMaskIntoConstraints = false
        izqImageView.contentMode = .scaleAspectFit
        izqImageView.isUserInteractionEnabled = true
        view.addSubview(izqImageView)

        NSLayoutConstraint.activate([
            izqImageView.centerYAnchor.constraint(equalTo: nivel1ImageView.centerYAnchor),
            izqImageView.trailingAnchor.constraint(equalTo: nivel1ImageView.leadingAnchor, constant: view.bounds.width * 0.15),
            izqImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
                    izqImageView.heightAnchor.constraint(equalTo: izqImageView.widthAnchor)
                ])

        let leftTap = UITapGestureRecognizer(target: self, action: #selector(showPreviousSprite))
        izqImageView.addGestureRecognizer(leftTap)
        
        let derImageView = UIImageView(image: UIImage(named: "DER"))
                derImageView.translatesAutoresizingMaskIntoConstraints = false
                derImageView.contentMode = .scaleAspectFit
                derImageView.isUserInteractionEnabled = true
                view.addSubview(derImageView)

        NSLayoutConstraint.activate([
            derImageView.centerYAnchor.constraint(equalTo: nivel1ImageView.centerYAnchor),
            derImageView.leadingAnchor.constraint(equalTo: nivel1ImageView.trailingAnchor, constant: -view.bounds.width * 0.15),
            derImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            derImageView.heightAnchor.constraint(equalTo: derImageView.widthAnchor)
                ])

        let rightTap = UITapGestureRecognizer(target: self, action: #selector(showNextSprite))
                derImageView.addGestureRecognizer(rightTap)

        NSLayoutConstraint.activate([
            nutriImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -110),
            nutriImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: view.bounds.width * -0.09),
            nutriImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            nutriImageView.heightAnchor.constraint(equalTo: nutriImageView.widthAnchor)
        ])
        
        let swipeLabel = UILabel()
        swipeLabel.translatesAutoresizingMaskIntoConstraints = false
        swipeLabel.text = "DESLIZA PARA VER MÁS NIVELES"
        swipeLabel.textAlignment = .center
        swipeLabel.font = UIFont.systemFont(ofSize: 15)
        swipeLabel.textColor = .white
        view.addSubview(swipeLabel)

        NSLayoutConstraint.activate([
            swipeLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -view.bounds.width * 0.11),
            swipeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }

    @objc func showPreviousSprite() {
        currentIndex = (currentIndex - 1 < 1) ? maxNivel : currentIndex - 1
        nivel1ImageView.image = UIImage(named: "Nivel\(currentIndex)")
    }
    
    @objc func showNextSprite() {
        currentIndex = (currentIndex + 1 > maxNivel) ? 1 : currentIndex + 1
        nivel1ImageView.image = UIImage(named: "Nivel\(currentIndex)")
    }
    
    @objc func goToAhorcado() {
        let ahorcadoVC = AhorcadoViewController()
        ahorcadoVC.modalPresentationStyle = .fullScreen
        present(ahorcadoVC, animated: true, completion: nil)
    }
    
    @objc func goToClasificar() {
        let clasificarVC = ClasificarViewController()
        clasificarVC.modalPresentationStyle = .fullScreen
        present(clasificarVC, animated: true, completion: nil)
    }
    @objc func goToLicuado() {
        let licuadoVC = LicuadoViewController()
        licuadoVC.modalPresentationStyle = .fullScreen
        present(licuadoVC, animated: true, completion: nil)
    }
    @objc func handleNivelTap() {
        switch currentIndex {
        case 1:
            goToAhorcado()
        case 2:
            goToLicuado()
        case 3:
            goToClasificar()
        default:
            break
        }
    }

}
