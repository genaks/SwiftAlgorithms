//
//  CircleAlgorithm.swift
//  Algorithms
//
//  Created by Akshay Jain on 26/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct CircleAlgorithm {
    
    func solution(S: String, X : [Int], Y : [Int]) -> Int {
        if S.count == 0 || X.count == 0 || Y.count == 0 {
            return 0
        }
        else if S.count != X.count || X.count != Y.count || S.count != Y.count {
            return 0
        }
        else {
            var maxRadius = 0.0
            var points : [Character : Double] = [:]
            var foundDuplicate = false
            for i in 0..<S.count {
                let charArray = Array(S)
                let distance = distanceFromZero(x: X[i], y: Y[i])
                if points[charArray[i]] == nil {
                    points[charArray[i]] = distance
                    if distance > maxRadius && !foundDuplicate {
                        maxRadius = distance
                    }
                }
                else {
                    foundDuplicate = true
                    let exisitingDistance = points[charArray[i]]!
                    if distance < exisitingDistance && distance < maxRadius {
                        maxRadius = distance
                    }
                }
            }
            if foundDuplicate {
                for key in points.keys {    //clean up the dictionary
                    if points[key]! >= maxRadius {
                        points[key] = nil
                    }
                }
            }
            return points.keys.count
        }
    }
    
    func distanceFromZero(x : Int, y : Int) -> Double {
        let sum = x * x + y * y
        return sqrt(Double(sum))
    }
}
