//
//  DrillBankTableViewCell.swift
//  DrillableiOS
//
//  Created by Erik Ugarte on 2020-11-24.
//  Copyright © 2020 Creative League. All rights reserved.
//

import UIKit

class DrillBankTableViewCell: UITableViewCell {

    
    @IBOutlet weak var drillContentView: UIView!
    @IBOutlet weak var drillNameLabel: UILabel!
    @IBOutlet weak var drillRatingLabel: UILabel!
    @IBOutlet weak var drillContentLabel: UILabel!
   
    @IBOutlet weak var rateButtonPressed: UIButton!
    @IBAction func viewButtonPressed(_ sender: UIButton) {
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
