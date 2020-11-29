//
//  SignUpViewController.swift
//  DrillableiOS
//
//  Created by Erik Ugarte on 2020-11-26.
//  Copyright © 2020 Creative League. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func createUserButtonPressed(_ sender: UIButton) {
        if let newEmail = emailTextField.text, let newPassword = passwordTextField.text {
            Auth.auth().createUser(withEmail: newEmail, password: newPassword) { authResult, error in
                print()
                print(authResult as Any)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.layer.cornerRadius = 6
        emailTextField.layer.borderWidth = 6
        passwordTextField.layer.cornerRadius = 6
        passwordTextField.layer.borderWidth = 6
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
