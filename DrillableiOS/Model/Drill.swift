//
//  Drill.swift
//  DrillableiOS
//
//  Created by Erik Ugarte on 2020-11-24.
//  Copyright © 2020 Creative League. All rights reserved.
//

import Foundation

struct Drill {
    let name : String
    let length : Int
    let content : String
    let id : String
    let ratings : [Int]
    
    var rating: Double {
        var totalRating = 0
        for userRating in ratings {
            totalRating += userRating
        }
        // Calculating the rating of a drill and rounding up to one decimal
        if ratings.count != 0 {
            let totalRating = Double(totalRating)/Double(ratings.count)
            return Double(round(10*totalRating)/10)
        } else {
            return 0.0
        }
    }
}
