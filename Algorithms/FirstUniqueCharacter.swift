//
//  FirstUniqueCharacter.swift
//  Algorithms
//
//  Created by Akshay Jain on 13/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var array = Array(repeating: 0, count: 26)
        let base = Int("a".unicodeScalars.first!.value)
        for i in s.unicodeScalars{
            let index = Int(i.value) - base
            array[index] += 1
        }
        var resultIndex = 0
        for c in s.unicodeScalars{
            let index = Int(c.value) - base
            if array[index] == 1{
                return resultIndex
            }
            resultIndex += 1
        }
        return -1
    }
}
