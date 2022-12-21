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
        let imageLeft = UIImage(systemName: "person")
        textUsername.setLeftIcon(imageLeft!)
        let imageRightUser = UIImage(systemName: "xmark.seal.fill")
        return textUsername
    }()
    
    let textPassword: UITextField = {
        let textPassword = UITextField()
        textPassword.layer.backgroundColor = UIColor.white.cgColor
        textPassword.translatesAutoresizingMaskIntoConstraints = false
        textPassword.layer.cornerRadius = 25
        textPassword.placeholder = "Write password"
        let image = UIImage(systemName: "lock")
        textPassword.setLeftIcon(image!)
        return textPassword
    }()
    
    let buttonLogin: UIButton = {
        let buttonLogin = UIButton()
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.layer.masksToBounds = true
        buttonLogin.layer.cornerRadius = 25
        buttonLogin.backgroundColor = #colorLiteral(red: 0.8548169732, green: 0.7613634467, blue: 0.9888407588, alpha: 1)
        buttonLogin.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        return buttonLogin
    }()
    
    let forgotPasswordButton: UIButton = {
        let forgotPasswordButton = UIButton()
        forgotPasswordButton.setTitle("Forgot your password?", for: .normal)
        forgotPasswordButton.setTitleColor(.black, for: .normal)
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return forgotPasswordButton
    }()
    
    let lineLabelLeft: UILabel = {
        let lineLabelLeft = UILabel ()
        lineLabelLeft.backgroundColor = .black
        lineLabelLeft.layer.cornerRadius = 2
        lineLabelLeft.translatesAutoresizingMaskIntoConstraints = false
        return lineLabelLeft
    }()
    
    let lineLabelRight: UILabel = {
        let lineLabelRight = UILabel ()
        lineLabelRight.backgroundColor = .black
        lineLabelRight.layer.cornerRadius = 2
        lineLabelRight.translatesAutoresizingMaskIntoConstraints = false
        return lineLabelRight
    }()
    
    let labelConnectWith: UILabel = {
        let labelConnectWith = UILabel()
        labelConnectWith.text = "or connect with"
        labelConnectWith.font = .systemFont(ofSize: 15)
        labelConnectWith.textColor = .black
        labelConnectWith.translatesAutoresizingMaskIntoConstraints = false
        labelConnectWith.textAlignment = .center
        return labelConnectWith
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
        view.addSubview(buttonLogin)
        view.addSubview(forgotPasswordButton)
        view.addSubview(lineLabelLeft)
        view.addSubview(lineLabelRight)
        view.addSubview(labelConnectWith)
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
            
            textPassword.topAnchor.constraint(equalTo: textUsername.bottomAnchor, constant: 10),
            textPassword.leadingAnchor.constraint(equalTo: textUsername.leadingAnchor),
            textPassword.rightAnchor.constraint(equalTo: textUsername.rightAnchor),
            textPassword.heightAnchor.constraint(equalToConstant: 50),
            
            buttonLogin.leadingAnchor.constraint(equalTo: textUsername.leadingAnchor),
            buttonLogin.trailingAnchor.constraint(equalTo: textUsername.trailingAnchor),
            buttonLogin.topAnchor.constraint(equalTo: textPassword.bottomAnchor, constant: 40),
            buttonLogin.heightAnchor.constraint(equalToConstant: 50),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 15),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: buttonLogin.trailingAnchor),
            forgotPasswordButton.leadingAnchor.constraint(equalTo: buttonLogin.leadingAnchor),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 20),
            
            labelConnectWith.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -125),
            labelConnectWith.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 125),
            labelConnectWith.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            
            lineLabelLeft.centerYAnchor.constraint(equalTo: labelConnectWith.centerYAnchor, constant: 2),
            lineLabelLeft.trailingAnchor.constraint(equalTo: labelConnectWith.leadingAnchor, constant: 5),
            lineLabelLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            lineLabelLeft.heightAnchor.constraint(equalToConstant: 1),
            
            lineLabelRight.centerYAnchor.constraint(equalTo: labelConnectWith.centerYAnchor, constant: 2),
            lineLabelRight.leadingAnchor.constraint(equalTo: labelConnectWith.trailingAnchor, constant: -5),
            lineLabelRight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            lineLabelRight.heightAnchor.constraint(equalToConstant: 1)
            
        ])
        
    }
    
    
    //MARK: - Action
    
    private func unlockLogin() {
        if textUsername.text == "Dmitry Dorobniy" && textPassword.text == "VPoiskahBugs" {
            let imageRightUser = UIImage(systemName: "checkmark.seal.fill")
            textUsername.setRightIcon(imageRightUser!)
            
            let imageRightPasword = UIImage(systemName: "checkmark.seal.fill")
            textPassword.setRightIcon(imageRightPasword!)
            
        } else {
            let imageRightUser = UIImage(systemName: "xmark.seal.fill")
            textUsername.setRightIcon(imageRightUser!)
            
            let imageRightPasword = UIImage(systemName: "xmark.seal.fill")
            textPassword.setRightIcon(imageRightPasword!)
        }
    }
    
    
    
}
    
// MARK: - Extension

extension UITextField {
    
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 15, y: 5, width: 23, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 40, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 40, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
