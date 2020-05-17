//
//  PlusOne.swift
//  Algorithms
//
//  Created by Akshay Jain on 15/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct PlusOne {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        for i in (0..<digits.count).reversed() {
            if digits[i] == 9 {
                result[i] = 0
            }
            else if digits[i] != 9 {
                result[i] += 1
                return result
            }
        }
        return [1] + result
    }
}
