//
//  Account.swift
//  Quezzy
//
//  Created by Nikita Aleksejevas on 2023-01-30.
//

import Foundation
import UIKit

class Account {
    let username: String
    let emailAddress: String
    let password: String
    
    let friends: [Account] = []
    let profilePicture: UIImage
    
    init(username: String, emailAddress: String, password: String) {
        self.username = username
        self.emailAddress = emailAddress
        self.password = password
        
        profilePicture = UIImage(named: "fb")!
    }
    
}
