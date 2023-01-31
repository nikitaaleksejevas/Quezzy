//
//  LoginViewController.swift
//  Quezzy
//
//  Created by Nikita Aleksejevas on 2023-01-26.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: -Properties
    private let accountManager = AccountManager()
    
    //MARK: -Outlets
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var errorMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorMessageLabel.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    
    //MARK: -Actions
    @IBAction private func loginTapped(_ sender: Any) {
        
        let result = accountManager.login(username: emailTextField.text!, password: passwordTextField.text!)
        
        if let errorMessage = result.errorMessage {
            errorMessageLabel.isHidden = false
            errorMessageLabel.text = errorMessage
            print(errorMessage)
        } else {
            loginSuccessful(account: result.user!)
            print("login")
        }
        
        
    }
    
    
    @IBAction private func forgotPasswordTapped(_ sender: Any) {
    }
    
    
    //MARK: -Functions
    
    private func loginSuccessful(account: Account) {
        let homeVC = HomeViewController()
        present(homeVC, animated: true)
    }
}
