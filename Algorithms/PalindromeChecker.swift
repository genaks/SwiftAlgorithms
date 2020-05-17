//
//  PalindromeChecker.swift
//  Algorithms
//
//  Created by Akshay Jain on 11/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct PalindromeChecker {
    func checkForPalindrome(_ s: String) -> Bool {
        
        guard !s.isEmpty else { return true }
        
        let str = s.lowercased()

        var leftIndex = str.startIndex
        var rightIndex = str.index(before: str.endIndex)

        while leftIndex < rightIndex {
            let rightCh = str[rightIndex]
            if !(rightCh.isLetter || rightCh.isNumber) {
                rightIndex = str.index(before: rightIndex)
                continue
            }
        
            let leftCh = str[leftIndex]
            if !(leftCh.isLetter || leftCh.isNumber) {
                leftIndex = str.index(after: leftIndex)
                continue
            }
            
            if leftCh != rightCh {
                return false
            }
            
            rightIndex = str.index(before: rightIndex)
            leftIndex = str.index(after: leftIndex)
        }
        
        return true
    }
}
