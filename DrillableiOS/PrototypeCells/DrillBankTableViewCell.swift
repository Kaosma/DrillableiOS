//
//  DrillBankTableViewCell.swift
//  DrillableiOS
//
//  Created by Erik Ugarte on 2020-11-24.
//  Copyright © 2020 Creative League. All rights reserved.
//

import UIKit

class DrillBankTableViewCell: UITableViewCell {

    var isViewed = false
    
    @IBOutlet weak var drillContentView: UIView!
    @IBOutlet weak var drillNameLabel: UILabel!
    @IBOutlet weak var drillRatingLabel: UILabel!
    @IBOutlet weak var drillContentLabel: UILabel!
   
    @IBOutlet weak var rateButtonPressed: UIButton!
    
    @IBAction func viewButtonPressed(_ sender: UIButton) {
        if isViewed {
            sender.setImage(UIImage(named: "chevron.compact.down"), for: .normal)
            isViewed = false
            print("setting down")
        } else {
            sender.setImage(UIImage(named: "chevron.compact.up"), for: .normal)
            isViewed = true
            print("setting up")
        }
        /*if sender.currentImage!.isEqual(UIImage(named: "chevron.compact.down")) {
            
            sender.setImage(UIImage(named: "chevron.compact.up")!, for: .normal)
        } else {
            sender.setImage(UIImage(named: "chevron.compact.down")!, for: .normal)
        }*/
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        drillContentView.layer.borderWidth = 1
        drillContentView.layer.borderColor = UIColor.white.cgColor
        drillContentView.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
