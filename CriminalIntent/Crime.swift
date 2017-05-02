//
//  Crime.swift
//  CriminalIntent
//
//  Created by Snee, Connor Patrick on 5/1/17.
//  Copyright © 2017 Snee, Connor Patrick. All rights reserved.
//

import UIKit

class Crime: NSObject {
    var title: String
    var serialNumber: String?
    let dateCreated: NSDate
    
    init(title: String, serialNumber: String?) {
        self.title = title
        self.serialNumber = serialNumber
        self.dateCreated = NSDate()
        
        super.init()
    } 
    
    convenience init(random: Bool = false) {
        if random {
            let criminals = ["Connor", "Mike", "Joro"]
            let crimes = ["stole", "ate", "drank"]
            let items = ["the cash", "the sandwich", "the milk"]
            
            var idx = arc4random_uniform(UInt32(criminals.count))
            let randomCriminal = criminals[Int(idx)]
            
            idx = arc4random_uniform(UInt32(crimes.count))
            let randomCrime = crimes[Int(idx)]
            
            let item = items[Int(idx)]
            
            let randomTitle = "\(randomCriminal) \(randomCrime) \(item)"
            let randomSerialNumber = NSUUID().uuidString.components(separatedBy: "-").first!
            
            self.init(title: randomTitle, serialNumber: randomSerialNumber)
        } else {
            self.init(title: "", serialNumber: nil)
        }
    }
    
}
