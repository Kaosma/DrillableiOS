//
//  DrillBankViewController.swift
//  DrillableiOS
//
//  Created by Erik Ugarte on 2020-11-24.
//  Copyright © 2020 Creative League. All rights reserved.
//

import UIKit

class DrillBankViewController: UIViewController {

    
    var drills: [Drill] = []
    
    @IBOutlet weak var drillBankTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        drillBankTableView.register(UINib(nibName: "DrillBankTableViewCell", bundle: nil), forCellReuseIdentifier: "DrillCell")
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

// MARK: TableView Functions
extension DrillBankViewController: UITableViewDelegate, UITableViewDataSource {
    
    // Return number of cells in tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    // Creating each TableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DrillCell", for: indexPath) as! DrillBankTableViewCell
        //let drill = drills[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
