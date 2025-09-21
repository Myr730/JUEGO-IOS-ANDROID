//
//  MemoramaViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 21/09/25.
//

import UIKit

class MemoramaViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = UIColor(red: 157/255, green: 213/255, blue: 70/255, alpha: 1.0)
        
        // Imagen de fondo
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "fondo_memorama")
        backgroundImage.contentMode = .scaleToFill
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backgroundImage)
        view.sendSubviewToBack(backgroundImage)
        
        // Constraints con padding superior e inferior
        let topPadding: CGFloat = 50
        let bottomPadding: CGFloat = 50
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: topPadding),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottomPadding),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
