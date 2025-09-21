//
//  ViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 20/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "fondonutri")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        let flechaImageView = UIImageView(image: UIImage(named: "flecha"))
        flechaImageView.translatesAutoresizingMaskIntoConstraints = false
        flechaImageView.isUserInteractionEnabled = true
        flechaImageView.contentMode = .scaleAspectFit
        view.addSubview(flechaImageView)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToAhorcado))
        flechaImageView.addGestureRecognizer(tapGesture)
        
        NSLayoutConstraint.activate([
            flechaImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.02),
            flechaImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            flechaImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            flechaImageView.heightAnchor.constraint(equalTo: flechaImageView.widthAnchor)
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
        
        let nivel1ImageView = UIImageView(image: UIImage(named: "Nivel1"))
        nivel1ImageView.translatesAutoresizingMaskIntoConstraints = false
        nivel1ImageView.contentMode = .scaleAspectFit
        view.addSubview(nivel1ImageView)
        
        NSLayoutConstraint.activate([
            nivel1ImageView.topAnchor.constraint(equalTo: labelImageView.bottomAnchor, constant: view.bounds.height * 0.01),
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
        view.addSubview(izqImageView)

        NSLayoutConstraint.activate([
            izqImageView.centerYAnchor.constraint(equalTo: nivel1ImageView.centerYAnchor),
            izqImageView.trailingAnchor.constraint(equalTo: nivel1ImageView.leadingAnchor, constant: view.bounds.width * 0.15),
            izqImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            izqImageView.heightAnchor.constraint(equalTo: izqImageView.widthAnchor)
        ])

        let derImageView = UIImageView(image: UIImage(named: "DER"))
        derImageView.translatesAutoresizingMaskIntoConstraints = false
        derImageView.contentMode = .scaleAspectFit
        view.addSubview(derImageView)

        NSLayoutConstraint.activate([
            derImageView.centerYAnchor.constraint(equalTo: nivel1ImageView.centerYAnchor),
            derImageView.leadingAnchor.constraint(equalTo: nivel1ImageView.trailingAnchor, constant: -view.bounds.width * 0.15),
            derImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            derImageView.heightAnchor.constraint(equalTo: derImageView.widthAnchor)
        ])

        
        NSLayoutConstraint.activate([
            nutriImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -110),
            nutriImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: view.bounds.width * 0.06),
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
    @objc func goToAhorcado() {
            let ahorcadoVC = AhorcadoViewController()
            ahorcadoVC.modalPresentationStyle = .fullScreen
            present(ahorcadoVC, animated: true, completion: nil)
        }
}
