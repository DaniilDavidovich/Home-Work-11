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
        textUsername.textColor = .black
        textUsername.layer.cornerRadius = 25
        textUsername.attributedPlaceholder = NSAttributedString(string: "Write you username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        let imageLeft = UIImage(systemName: "person")
        textUsername.setLeftIcon(imageLeft!)
        let imageRightUser = UIImage(systemName: "xmark.seal.fill")
        
        textUsername.layer.masksToBounds = false
        textUsername.layer.shadowColor = UIColor.lightGray.cgColor
        textUsername.layer.shadowOpacity = 0.3
        textUsername.layer.shadowOffset = .init(width: 0, height: 2)
        textUsername.layer.shadowRadius = 10
        textUsername.layer.shouldRasterize = true
        textUsername.layer.rasterizationScale = UIScreen.main.scale
        
        return textUsername
    }()
    
    let textPassword: UITextField = {
        let textPassword = UITextField()
        textPassword.layer.backgroundColor = UIColor.white.cgColor
        textPassword.translatesAutoresizingMaskIntoConstraints = false
        textPassword.layer.cornerRadius = 25
        textPassword.textColor = .black
        textPassword.attributedPlaceholder = NSAttributedString(string: "Write password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])

        let image = UIImage(systemName: "lock")
        textPassword.setLeftIcon(image!)
        
        textPassword.layer.masksToBounds = false
        textPassword.layer.shadowColor = UIColor.lightGray.cgColor
        textPassword.layer.shadowOpacity = 0.3
        textPassword.layer.shadowOffset = .init(width: 0, height: 2)
        textPassword.layer.shadowRadius = 10
        textPassword.layer.shouldRasterize = true
        textPassword.layer.rasterizationScale = UIScreen.main.scale
        return textPassword
    }()
    
    lazy var buttonLogin: UIButton = {
        let buttonLogin = UIButton()
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.setTitleColor(.systemGray, for: .highlighted)
        buttonLogin.layer.masksToBounds = true
        buttonLogin.layer.cornerRadius = 25
        buttonLogin.backgroundColor = #colorLiteral(red: 0.8548169732, green: 0.7613634467, blue: 0.9888407588, alpha: 1)
        buttonLogin.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        buttonLogin.addTarget(self, action: #selector(unlockLogin), for: .touchUpInside)
        
        buttonLogin.layer.masksToBounds = false
        buttonLogin.layer.shadowColor = UIColor.black.cgColor
        buttonLogin.layer.shadowOpacity = 0.3
        buttonLogin.layer.shadowOffset = .init(width: 0, height: 1)
        buttonLogin.layer.shadowRadius = 3
        buttonLogin.layer.shouldRasterize = true
        buttonLogin.layer.rasterizationScale = UIScreen.main.scale
        
        return buttonLogin
    }()
    
    lazy var  forgotPasswordButton: UIButton = {
        let forgotPasswordButton = UIButton()
        forgotPasswordButton.setTitle("Forgot your password?", for: .normal)
        forgotPasswordButton.setTitleColor(.black, for: .normal)
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        forgotPasswordButton.addTarget(self, action: #selector(forgotPassword), for: .touchUpInside)
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
    
    let buttonFacebook: UIButton = {
        let buttonFacebook = UIButton()
        
        var config = UIButton.Configuration.filled()
        config.image = UIImage(named: "fb")
        config.imagePadding = 8
        config.imagePlacement = .leading
        config.cornerStyle = .capsule
        config.baseBackgroundColor = .white
        config.background.strokeColor = .black
        config.titleAlignment = .leading
        
        buttonFacebook.configuration = config
        buttonFacebook.setTitleColor(.black, for: .normal)
        buttonFacebook.setTitle("Facebook", for: .normal)
        buttonFacebook.translatesAutoresizingMaskIntoConstraints = false
        
        buttonFacebook.layer.masksToBounds = false
        buttonFacebook.layer.shadowColor = UIColor.gray.cgColor
        buttonFacebook.layer.shadowOpacity = 0.3
        buttonFacebook.layer.shadowOffset = .init(width: 0, height: 1)
        buttonFacebook.layer.shadowRadius = 3
        buttonFacebook.layer.shouldRasterize = true
        buttonFacebook.layer.rasterizationScale = UIScreen.main.scale
        return buttonFacebook
    }()
    
    let buttonTwitter: UIButton = {
        let buttonTwitter = UIButton()
        
        var config = UIButton.Configuration.filled()
        config.image = UIImage(named: "tw")
        config.imagePadding = 0
        config.imagePlacement = .leading
        config.cornerStyle = .capsule
        config.baseBackgroundColor = .white
        config.background.strokeColor = .black
        config.titleAlignment = .center
        
        buttonTwitter.configuration = config
        buttonTwitter.setTitleColor(.black, for: .normal)
        buttonTwitter.setTitle("Twitter", for: .normal)
        buttonTwitter.translatesAutoresizingMaskIntoConstraints = false
        
        buttonTwitter.layer.masksToBounds = false
        buttonTwitter.layer.shadowColor = UIColor.gray.cgColor
        buttonTwitter.layer.shadowOpacity = 0.3
        buttonTwitter.layer.shadowOffset = .init(width: 0, height: 1)
        buttonTwitter.layer.shadowRadius = 3
        buttonTwitter.layer.shouldRasterize = true
        buttonTwitter.layer.rasterizationScale = UIScreen.main.scale
        return buttonTwitter
    }()
    
    let labelRegister: UILabel = {
        let labelRegister = UILabel()
        labelRegister.text = "Dont have account?"
        labelRegister.font = .systemFont(ofSize: 15)
        labelRegister.translatesAutoresizingMaskIntoConstraints = false
        labelRegister.textAlignment = .center
        return labelRegister
    }()
    
    let buttonRegister: UIButton = {
        let buttonRegister = UIButton()
        buttonRegister.setTitle("Sign up", for: .normal)
        buttonRegister.translatesAutoresizingMaskIntoConstraints = false
        buttonRegister.titleLabel?.font = .systemFont(ofSize: 15)
        buttonRegister.setTitleColor(.blue, for: .normal)
        buttonRegister.titleLabel?.textAlignment = .center
        
        return buttonRegister
    }()
    
    let buttonGmail: UIButton = {
        let buttonGmail = UIButton()
        
        var config = UIButton.Configuration.filled()
        config.image = UIImage(named: "gm")
        config.imagePadding = 3
        config.imagePlacement = .leading
        config.cornerStyle = .capsule
        config.baseBackgroundColor = .white
        config.background.strokeColor = .black
        config.titleAlignment = .center
        
        buttonGmail.configuration = config
        buttonGmail.setTitleColor(.black, for: .normal)
        buttonGmail.setTitle("Gmail", for: .normal)
        buttonGmail.translatesAutoresizingMaskIntoConstraints = false
        
        buttonGmail.layer.masksToBounds = false
        buttonGmail.layer.shadowColor = UIColor.gray.cgColor
        buttonGmail.layer.shadowOpacity = 0.3
        buttonGmail.layer.shadowOffset = .init(width: 0, height: 1)
        buttonGmail.layer.shadowRadius = 3
        buttonGmail.layer.shouldRasterize = true
        buttonGmail.layer.rasterizationScale = UIScreen.main.scale
        return buttonGmail
    }()
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
        self.hideKeyboardWhenTappedAround()
        
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
        view.addSubview(buttonFacebook)
        view.addSubview(buttonTwitter)
        view.addSubview(labelRegister)
        view.addSubview(buttonRegister)
        view.addSubview(buttonGmail)
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
            lineLabelLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17), //5
            lineLabelLeft.heightAnchor.constraint(equalToConstant: 1),
            
            lineLabelRight.centerYAnchor.constraint(equalTo: labelConnectWith.centerYAnchor, constant: 2),
            lineLabelRight.leadingAnchor.constraint(equalTo: labelConnectWith.trailingAnchor, constant: -5),
            lineLabelRight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -17), //5
            lineLabelRight.heightAnchor.constraint(equalToConstant: 1),
            
            buttonFacebook.leftAnchor.constraint(equalTo: labelConnectWith.leftAnchor, constant: -3),
            buttonFacebook.rightAnchor.constraint(equalTo: labelConnectWith.rightAnchor, constant: 3),
            buttonFacebook.heightAnchor.constraint(equalToConstant: 30),
            buttonFacebook.centerYAnchor.constraint(equalTo: labelConnectWith.centerYAnchor, constant: 40),
            
            buttonTwitter.rightAnchor.constraint(equalTo: labelConnectWith.leftAnchor,constant: -7),// 7
            buttonTwitter.leftAnchor.constraint(equalTo: lineLabelLeft.leftAnchor),
            buttonTwitter.heightAnchor.constraint(equalToConstant: 30),
            buttonTwitter.centerYAnchor.constraint(equalTo: labelConnectWith.centerYAnchor, constant: 40),
            
            labelRegister.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            labelRegister.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75),
            labelRegister.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -160),
            
            buttonRegister.centerYAnchor.constraint(equalTo: labelRegister.centerYAnchor),
            buttonRegister.leadingAnchor.constraint(equalTo: labelRegister.trailingAnchor, constant: 20),
            
            buttonGmail.leftAnchor.constraint(equalTo: labelConnectWith.rightAnchor, constant: 7),// 7
            buttonGmail.rightAnchor.constraint(equalTo: lineLabelRight.rightAnchor),
            buttonGmail.heightAnchor.constraint(equalToConstant: 30),
            buttonGmail.centerYAnchor.constraint(equalTo: labelConnectWith.centerYAnchor, constant: 40),
        ])
        
    }
    
    
    //MARK: - Action
    
    @objc private func unlockLogin() {
        if textUsername.text == "Dmitry Dorodniy" && textPassword.text == "VPoiskahBugs" {
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
    
    @objc private func forgotPassword() {
        if textUsername.text != "Dmitry Dorodniy" && textPassword.text != "VPoiskahBugs" {
            textUsername.text = "Dmitry Dorodniy"
            textPassword.text = "VPoiskahBugs"
        }
    }
}
    
// MARK: - Extension

// MARK: For image in text field
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

//MARK: For dismis keybord

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
