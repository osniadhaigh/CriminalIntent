//
//  ItemStore.swift
//  CriminalIntent
//
//  Created by Snee, Connor Patrick on 5/1/17.
//  Copyright © 2017 Snee, Connor Patrick. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Crime]()
    
    func createCrime() -> Crime {
        let newCrime = Crime(random: true)
        
        allItems.append(newCrime)
        
        return newCrime
    }
    
    init() {
        for _ in 0..<14 {
            createCrime()
        }
    }
}
