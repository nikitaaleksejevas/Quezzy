//
//  AccountManager.swift
//  Quezzy
//
//  Created by Nikita Aleksejevas on 2023-01-30.
//

import Foundation

class AccountManager {
    
    struct LoginResult {
        let errorMessage: String?
        let user: Account?
    }
    
    typealias BoolCompletion = (Bool) -> ()
    
//    func register(account: Account, completion: BoolCompletion) {
//        if account.username.isEmpty {
//            completion(false)
//            return
//        }
//
//        LocalDatabase.localDB.append(account)
//        completion(true)
//    }
    
    func register(username: String, emailAddress: String, password: String, confirmPassword: String) -> LoginResult {
        
        guard !username.isEmpty, !emailAddress.isEmpty, !password.isEmpty else {
            return LoginResult(errorMessage: "Username or password is empty", user: nil)
        }
        
        guard !LocalDatabase.localDB.contains(where: { registeredUser in
            registeredUser.username == username
        }) else {
            return LoginResult(errorMessage: "Username already exists", user: nil)
        }
        
        guard emailAddress.contains(where: { char in
            char == "@"
        }) else {
            return LoginResult(errorMessage: "Please enter valid Email Address", user: nil)
        }
        
        guard password.count > 2, password != "12345678" else {
            return LoginResult(errorMessage: "Password should be at least 8 symbols", user: nil)
        }
        
        if password != confirmPassword {
            return LoginResult(errorMessage: "Password doesn't match", user: nil)
        }
        
        let user = Account(username: username, emailAddress: emailAddress, password: password)
        
        LocalDatabase.localDB.append(user)
        return LoginResult(errorMessage: nil, user: user)
    }
    
    func login(username: String, password: String) -> LoginResult {
        
        let registeredUser = LocalDatabase.localDB.first { registeredUser in
            username == registeredUser.username
        }
        
        if password.isEmpty && username.isEmpty {
            return LoginResult(errorMessage: "Username or password can not be empty", user: nil)
        }
        
        guard registeredUser?.username == username, registeredUser?.password == password else {
            return LoginResult(errorMessage: "Incorrect username or password", user: nil)
        }
        
        return LoginResult(errorMessage: nil, user: registeredUser)
    }
}
