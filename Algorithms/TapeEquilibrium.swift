//
//  TapeEquilibrium.swift
//  Algorithms
//
//  Created by Akshay Jain on 30/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct TapeEquilibrium {
    
    public func solution(_ A : inout [Int]) -> Int {
        var minimumDifference = 0
        if A.count == 0 {
            return minimumDifference
        }
        else if A.count == 1 {
            return A[0]
        }
        var sum = 0
        var forwardSum = 0
        for number in A {
            sum += abs(number)
        }
        minimumDifference = sum
        for number in A {
            forwardSum += abs(number)
            let remainingSum = sum - forwardSum
            let difference = abs(forwardSum - remainingSum)
            if difference < minimumDifference {
                minimumDifference = difference
            }
        }
        return minimumDifference
    }
}
