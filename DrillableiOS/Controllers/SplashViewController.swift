//
//  SplashViewController.swift
//  DrillableiOS
//
//  Created by Erik Ugarte on 2020-11-26.
//  Copyright © 2020 Creative League. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBAction func registerButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "GoToSignUp", sender: self)
    }
    @IBAction func loginButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "GoToLogin", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
