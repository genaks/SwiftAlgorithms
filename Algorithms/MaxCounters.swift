//
//  MaxCounters.swift
//  Algorithms
//
//  Created by Akshay Jain on 02/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct MaxCounters {
    public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
        var outputArray : [Int] = []
        for _ in 0..<N {
            outputArray.append(0)
        }
        if A.count == 0 {
            return outputArray
        }
        var max = 0
        for i in 0..<A.count {
            let item = A[i]
            if item == N + 1 {
                for i in 0..<outputArray.count {
                    outputArray[i] = max
                }
            }
            else {
                outputArray[item - 1] += 1
                if outputArray[item - 1] > max {
                    max = outputArray[item - 1]
                }
            }
        }
        return outputArray
    }
}
