//
//  LoginViewController.swift
//  Quezzy
//
//  Created by Nikita Aleksejevas on 2023-01-26.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: -Outlets
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //MARK: -Actions
    @IBAction private func loginTapped(_ sender: Any) {
    }
    
    
    @IBAction private func forgotPasswordTapped(_ sender: Any) {
    }
    
}
