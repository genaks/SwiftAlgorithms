//
//  PlusMinusTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 01/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct PlusMinus {
    func solution(inputString : String) -> (Bool, Int) {
        if inputString.count < 2 {
            return (false, 0)
        }
        var sum = 0
        let stringArray = Array(inputString)
        for item in stringArray {
            if item == "+" {
                sum += 1
            }
            else if item == "-" {
                sum -= 1
            }
        }
        if sum >= 2 {
            return (true , 0)
        }
        var iterations = 0
        for i in 0..<stringArray.count {
            iterations += 1
            let character = stringArray[stringArray.count - 1 - i]
            if character == "+" {
                sum -= 1
            }
            else if character == "-" {
                sum += 1
            }
            if sum >= 2 {
                return (true, iterations)
            }
        }
        return (false, 0)
    }
}
