//
//  ViewController.swift
//  authorization
//
//  Created by Zalman Zoteev on 31/03/2023.
//

import UIKit

class AuthorizationViewController: UIViewController {

    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.greeting = loginTF.text
    }
    

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlertLogin(
        withTitle title: String,
        andMessage message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
    }
    
    private func showAlertPassword(
        withTitle title: String,
        andMessage message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
    }
    
        
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let imputTextLogin = loginTF.text, !imputTextLogin.isEmpty
        else { showAlertLogin(withTitle: "Problems..", andMessage: " Uncorrect Login")
            return
        }
        let userName = "Login"
        let userPassword = "Password"
        let isUserNameIsValid = NSPredicate(format: "SELF MATCHES %@", userName).evaluate(with: imputTextLogin)

        if !isUserNameIsValid {
            showAlertLogin(withTitle: "Problems..", andMessage: " Uncorrect Login")
            return
        }
    }
    @IBAction func remaindLoginTapped(_ sender: Any) {
        showAlertLogin(withTitle: "You Login", andMessage: "Login")
    }
    @IBAction func remaindPasswordTapped(_ sender: Any) {
        showAlertPassword(withTitle: "You Passord", andMessage: "Password")
    }
}

