//
//  ViewController.swift
//  Home Work 11
//
//  Created by Daniil Davidovich on 21.12.22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - UI Elements
    
    let backroundWindow: UIImageView = {
        let imageForLogin = UIImage(named: "LoginWindowBackground")
        let imageForBackground = UIImageView(image: imageForLogin)
        imageForBackground.translatesAutoresizingMaskIntoConstraints = false
        return imageForBackground
    }()
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupHierarchy() {
        view.addSubview(backroundWindow)
        
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            backroundWindow.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backroundWindow.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
        
    }
    
    
    //MARK: - Action
    


}

