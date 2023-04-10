//
//  GreetingViewController.swift
//  authorization
//
//  Created by Zalman Zoteev on 31/03/2023.
//

import UIKit

final class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = " Have a good day \(greeting!)!"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
    }
    
    @IBAction func logOutButtonTapped(_ sender: Any) {
    }
    

}
