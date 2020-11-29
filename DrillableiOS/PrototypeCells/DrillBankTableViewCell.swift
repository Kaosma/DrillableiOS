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
    
    @IBAction func rateButtonPressed(_ sender: UIButton) {
        
        //requestReview()
        
    }
    
    @IBAction func viewButtonPressed(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(systemName: "chevron.compact.down") {
            print("down")
        }
        /*if isViewed {
            sender.setImage(UIImage(named: "chevron.compact.down"), for: .normal)
            isViewed = false
            print("setting down")
        } else {
            sender.setImage(UIImage(named: "chevron.compact.up"), for: .normal)
            isViewed = true
            print("setting up")
        }*/
        /*if sender.currentImage!.isEqual(UIImage(named: "chevron.compact.down")) {
            
            sender.setImage(UIImage(named: "chevron.compact.up")!, for: .normal)
        } else {
            sender.setImage(UIImage(named: "chevron.compact.down")!, for: .normal)
        }*/
    }
    
    func requestReview() {
        let reviewController = JXReviewController()
        reviewController.title = "Rate this drill"
        reviewController.message = "Tap a star to rate it."
        reviewController.delegate = self
        /*let alert = UIAlertController(title: "Rate this drill", message: "", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)*/
        //present(reviewController, animated: true)
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

extension DrillBankTableViewCell: JXReviewControllerDelegate {

    func reviewController(_ reviewController: JXReviewController, didSelectWith point: Int) {
        print("Did select with \(point) point(s).")
    }

    func reviewController(_ reviewController: JXReviewController, didCancelWith point: Int) {
        print("Did cancel with \(point) point(s).")
    }

    func reviewController(_ reviewController: JXReviewController, didSubmitWith point: Int) {
        print("Did submit with \(point) point(s).")
    }
}
