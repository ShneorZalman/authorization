//
//  ViewController.swift
//  authorization
//
//  Created by Zalman Zoteev on 31/03/2023.
//

import UIKit

final class AuthorizationViewController: UIViewController {

    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginTF: UITextField!
    
    private let userName = "1"
    private let userPassword = "2"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.greeting = userName
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(
        withTitle title: String,
        andMessage message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard loginTF.text == userName, passwordTF.text == userPassword
            else { showAlert(withTitle: "Problems..", andMessage: "Uncorrect login or password")
                return
        }
        performSegue(withIdentifier: "showGreetingVC", sender: nil)
    }
    
    @IBAction func remaindLoginTapped(_ sender: Any) {
        showAlert(withTitle: "You Login", andMessage: "Login")
    }
    
    @IBAction func remaindPasswordTapped(_ sender: Any) {
        showAlert(withTitle: "You Passord", andMessage: "Password")
    }
}

