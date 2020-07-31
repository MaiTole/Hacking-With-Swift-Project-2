//
//  Array+Shuffle.swift
//  Project 2
//
//  Created by Swati Vilas Tole on 12/7/20.
//  Copyright © 2020 Swati Vilas Tole. All rights reserved.
//

import Foundation

extension Array {
    mutating func shuffle() {
        for i in indices.reversed() {
            let j = arc4random_uniform( numericCast(i+1) )
            swapAt(i, numericCast(j))
        }
    }
    
    func shuffled() -> Array {
        var newArray = self
        newArray.shuffle()
        return newArray
    }
}
