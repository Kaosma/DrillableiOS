//
//  ViewController.swift
//  DrillableiOS
//
//  Created by Erik Ugarte on 2020-11-24.
//  Copyright © 2020 Creative League. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if let inputEmail = emailTextField.text, let inputPassword = passwordTextField.text {
            Auth.auth().signIn(withEmail: inputEmail, password: inputPassword) { [weak self] authResult, error in
                if let e = error {
                    print(e)
                } else {
                    self!.performSegue(withIdentifier: "GoToMain", sender: self)
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

