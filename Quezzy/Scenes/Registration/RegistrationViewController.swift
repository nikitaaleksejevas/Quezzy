//
//  RegistrationViewController.swift
//  Quezzy
//
//  Created by Nikita Aleksejevas on 2023-01-26.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    //MARK: -Outlets
    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var confirmPasswordTextField: UITextField!
    @IBOutlet private weak var errorMessageLabel: UILabel!
    
    
    //MARK: -Properties
    
    let accountManager = AccountManager()
    var account: Account?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorMessageLabel.isHidden = true


        // Do any additional setup after loading the view.
    }

    //MARK: -Actions
    
    @IBAction private func signupTapped(_ sender: Any) {
        
        let result = accountManager.register(username: usernameTextField.text!, emailAddress: emailTextField.text!, password: passwordTextField.text!, confirmPassword: confirmPasswordTextField.text!)
        
        if let errorMessage = result.errorMessage {
            errorMessageLabel.text = errorMessage
            errorMessageLabel.isHidden = false
            print(errorMessage)
        } else {
            registrationSuccessful(account: result.user!)
            print("Registered")
        }
   
    }
    
    //MARK: -Functions
    private func registrationSuccessful(account: Account) {
        let homeVC = HomeViewController()
        present(homeVC, animated: true)
    }
    
}
