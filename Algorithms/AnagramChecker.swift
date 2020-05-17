//
//  File.swift
//  Algorithms
//
//  Created by Akshay Jain on 11/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct AnagramChecker : Equatable {
    func check(_ s : String,_ t : String) -> Bool {
        if s.count != t.count {
            return false
        }
        else {
            var countArray : [Int] = [Int](repeating: 0, count: 26)
            let start : UInt32 = "a".unicodeScalars.first!.value
            for c in s.unicodeScalars {
                countArray[Int(c.value - start)] += 1
            }
            for c in t.unicodeScalars {
                let index = Int(c.value - start)
                countArray[index] -= 1
                if countArray[index] < 0 {
                    return false
                }
            }
            return true
        }
    }
}
