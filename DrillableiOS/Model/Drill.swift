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
    let ratings : [String : Int]
    
    var rating: Int {
        var totalRating = 0
        for userRating in ratings {
            totalRating += userRating.value
        }
        return totalRating/ratings.count
    }
}
