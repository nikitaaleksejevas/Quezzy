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
    
    //MARK: -Properties
    
    let accountManager = AccountManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //MARK: -Actions
    
    @IBAction private func signupTapped(_ sender: Any) {
   
    }
    
    
}
