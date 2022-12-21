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
    
    let textUsername: UITextField = {
        let textUsername = UITextField()
        textUsername.layer.backgroundColor = UIColor.white.cgColor
        textUsername.translatesAutoresizingMaskIntoConstraints = false
        textUsername.layer.cornerRadius = 25
        textUsername.placeholder = "Write you username"
        textUsername.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 62))
        textUsername.leftViewMode = .always
        return textUsername
    }()
    
    let textPassword: UITextField = {
        let textPassword = UITextField()
        textPassword.layer.backgroundColor = UIColor.white.cgColor
        textPassword.translatesAutoresizingMaskIntoConstraints = false
        textPassword.layer.cornerRadius = 25
        textPassword.placeholder = "Write password"
        textPassword.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 62))
        textPassword.leftViewMode = .always
        return textPassword
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
        view.addSubview(textUsername)
        view.addSubview(textPassword)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            backroundWindow.topAnchor.constraint(equalTo: view.topAnchor),
            backroundWindow.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backroundWindow.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backroundWindow.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        
            labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -280),
            
            textUsername.topAnchor.constraint(equalTo: labelLogin.bottomAnchor, constant: 50),
            textUsername.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            textUsername.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60),
            textUsername.heightAnchor.constraint(equalToConstant: 50),
            
            textPassword.topAnchor.constraint(equalTo: textUsername.bottomAnchor, constant: 20),
            textPassword.leadingAnchor.constraint(equalTo: textUsername.leadingAnchor, constant: 0),
            textPassword.rightAnchor.constraint(equalTo: textUsername.rightAnchor, constant: 0),
            textPassword.heightAnchor.constraint(equalToConstant: 50)
        
        ])
        
    }
    
    
    //MARK: - Action
    
    


}

