//
//  DrillBankViewController.swift
//  DrillableiOS
//
//  Created by Erik Ugarte on 2020-11-24.
//  Copyright © 2020 Creative League. All rights reserved.
//

import UIKit
import Firebase

class DrillBankViewController: UIViewController {

    let db = Firestore.firestore()
    
    var drills: [Drill] = []
    
    @IBOutlet weak var drillBankTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        drillBankTableView.register(UINib(nibName: "DrillBankTableViewCell", bundle: nil), forCellReuseIdentifier: "DrillCell")
        loadDrillsFromDatabase()
    }
    
    func loadDrillsFromDatabase(){
        let collection = db.collection("drills")
        collection.getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    let dictionary = document.data()
                    let ratingsCollection = collection.document(document.documentID).collection("ratings")
                    
                    if let drillName = dictionary["name"] as? String, let drillLength = dictionary["length"] as? Int, let drillContent = dictionary["content"] as? String {
                        let drillId = document.documentID
                        
                        ratingsCollection.getDocuments() { (querySnapshot, err) in
                            if let err = err {
                                print("Error getting documents: \(err)")
                            } else {
                                var drillRatings : [Int] = []
                                for ratingDocument in querySnapshot!.documents {
                                    let ratingsDict = ratingDocument.data()
                                    
                                    if let drillRating = ratingsDict["rating"] as? Int {
                                        drillRatings.append(drillRating)
                                    }
                                }
                                let drill = Drill(name: drillName, length: drillLength, content: drillContent, id: drillId, ratings: drillRatings)
                                self.drills.append(drill)
                                DispatchQueue.main.async {
                                    self.drillBankTableView.reloadData()
                                }
                            }
                        }
                    } else {
                        print("Could not retrieve drill")
                    }
                }
            }
        }
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
        drills.count
    }
    
    // Creating each TableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DrillCell", for: indexPath) as! DrillBankTableViewCell
        let drill = drills[indexPath.row]
        cell.drillNameLabel.text = drill.name
        cell.drillContentLabel.text = drill.content
        cell.drillRatingLabel.text = String(drill.rating)+"★"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
