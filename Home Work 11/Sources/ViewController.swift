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
        imageForBackground.contentMode = .redraw
        return imageForBackground
    }()
    
    let labelLogin: UILabel = {
        let labelLogin = UILabel()
        labelLogin.text = "Login"
        labelLogin.font = .systemFont(ofSize: 30, weight: .heavy)
        labelLogin.translatesAutoresizingMaskIntoConstraints = false
        return labelLogin
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
        view.addSubview(labelLogin)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            backroundWindow.topAnchor.constraint(equalTo: view.topAnchor),
            backroundWindow.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backroundWindow.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backroundWindow.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        
            labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -280)
        ])
        
    }
    
    
    //MARK: - Action
    


}

