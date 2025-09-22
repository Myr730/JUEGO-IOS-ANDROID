//
//  PadresViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 21/09/25.
//

import UIKit

class PadresViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 235/255, green: 113/255, blue: 1/255, alpha: 1.0)
        
        let flechaImageView = UIImageView(image: UIImage(named: "flecha"))
        flechaImageView.translatesAutoresizingMaskIntoConstraints = false
        flechaImageView.isUserInteractionEnabled = true
        flechaImageView.contentMode = .scaleAspectFit
        view.addSubview(flechaImageView)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToNiveles))
        flechaImageView.addGestureRecognizer(tapGesture)
        
        NSLayoutConstraint.activate([
            flechaImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.02),
            flechaImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            flechaImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            flechaImageView.heightAnchor.constraint(equalTo: flechaImageView.widthAnchor)
        ])
        
        let textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.textAlignment = .center
        textLabel.numberOfLines = 2
        textLabel.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        textLabel.textColor = .white
        textLabel.text = "PADRES"
        view.addSubview(textLabel)

        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -20),
            textLabel.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        let bannerImageView = UIImageView(image: UIImage(named: "progreso"))
        bannerImageView.translatesAutoresizingMaskIntoConstraints = false
        bannerImageView.contentMode = .scaleAspectFit
        view.addSubview(bannerImageView)

        NSLayoutConstraint.activate([
            bannerImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            bannerImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            bannerImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            // Set height proportional to width to maintain aspect ratio
            bannerImageView.heightAnchor.constraint(equalTo: bannerImageView.widthAnchor, multiplier: 1.0)
        ])
        
        let bannerImageView2 = UIImageView(image: UIImage(named: "peso"))
        bannerImageView2.translatesAutoresizingMaskIntoConstraints = false
        bannerImageView2.contentMode = .scaleAspectFit
        view.addSubview(bannerImageView2)

        NSLayoutConstraint.activate([
            bannerImageView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            bannerImageView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            bannerImageView2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            // Set height proportional to width to maintain aspect ratio
            bannerImageView2.heightAnchor.constraint(equalTo: bannerImageView.widthAnchor, multiplier: 1.0)
        ])
        
        let bannerImageView3 = UIImageView(image: UIImage(named: "consejos"))
        bannerImageView3.translatesAutoresizingMaskIntoConstraints = false
        bannerImageView3.contentMode = .scaleAspectFit
        view.addSubview(bannerImageView3)

        NSLayoutConstraint.activate([
            bannerImageView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            bannerImageView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            bannerImageView3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            // Set height proportional to width to maintain aspect ratio
            bannerImageView3.heightAnchor.constraint(equalTo: bannerImageView.widthAnchor, multiplier: 1.0)
        ])
        
        let bannerImageView4 = UIImageView(image: UIImage(named: "tiempo"))
        bannerImageView4.translatesAutoresizingMaskIntoConstraints = false
        bannerImageView4.contentMode = .scaleAspectFit
        view.addSubview(bannerImageView4)

        NSLayoutConstraint.activate([
            bannerImageView4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            bannerImageView4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            bannerImageView4.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250),
            // Set height proportional to width to maintain aspect ratio
            bannerImageView4.heightAnchor.constraint(equalTo: bannerImageView.widthAnchor, multiplier: 1.0)
        ])

    }
    
    @objc func goToNiveles() {
            let nivelesVC = ViewController()
            nivelesVC.modalPresentationStyle = .fullScreen
            present(nivelesVC, animated: true, completion: nil)
        }
}
