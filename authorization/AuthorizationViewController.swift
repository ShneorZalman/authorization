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
        
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.greeting = loginTF.text
    }
    
    @IBAction func logInTapped(_ sender: Any) {
    }
    @IBAction func remaindLoginTapped(_ sender: Any) {
    }
    @IBAction func remaindPasswordTapped(_ sender: Any) {
    }
}

