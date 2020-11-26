//
//  ManageTeamsViewController.swift
//  DrillableiOS
//
//  Created by Erik Ugarte on 2020-11-24.
//  Copyright © 2020 Creative League. All rights reserved.
//

import UIKit

class ManageTeamsViewController: UIViewController {
    
    let teams : [Team] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: IB Actions
    // Creates an alert that allows you to add a new category
    @IBAction func addCategoryButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Add New Category", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Category", style: .default) { (action) in

            if !textField.text!.trimmingCharacters(in: .whitespaces).isEmpty {
                let categoryName = textField.text!
                let categoryColor = UIColor.randomFlat().hexValue()
                self.db.collection("categories").addDocument(data: ["id" : self.id,
                                                              "category" : categoryName,
                                                                 "tasks" : [String]().self,
                                                           "colorString" : categoryColor])
                self.categoryArray.append(categoryName)
                self.categoryColorArray.append(categoryColor)
                self.tableView.reloadData()
            } else {}
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new category"
            textField = alertTextField
        }
        
        alert.addAction(action)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
