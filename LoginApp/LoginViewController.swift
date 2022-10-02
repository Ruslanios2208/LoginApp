//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Руслан Шигапов on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greeting = "Welcome, \(userNameTF.text ?? "")!"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }

    // MARK: - IBActions
    @IBAction func logInButtonPressed() {
        if userNameTF.text == "123", passwordTF.text == "321" {
            return
        } else {
            showAlert(withTitle: "Invalid login or password",
                      andMessage: "Please, enter correct login and password")
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is 123")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 321")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
