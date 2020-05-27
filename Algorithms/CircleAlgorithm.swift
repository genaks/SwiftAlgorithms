//
//  CircleAlgorithm.swift
//  Algorithms
//
//  Created by Akshay Jain on 26/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct CircleAlgorithm {
    
    func solution(s: String, x : [Int], y : [Int]) -> Int {
        if s.count == 0 || x.count == 0 || y.count == 0 {
            return 0
        }
        else if s.count != x.count || x.count != y.count || s.count != y.count {
            return 0
        }
        else {
            var maxRadius = 0.0
            var points : [Character : Double] = [:]
            var flag = false
            for i in 0..<s.count {
                let charArray = Array(s)
                let distance = distanceFromZero(x: x[i], y: y[i])
                if points[charArray[i]] == nil {
                    points[charArray[i]] = distance
                    if distance > maxRadius {
                        maxRadius = distance
                    }
                }
                else {
                    flag = true
                    let exisitingDistance = points[charArray[i]]!
                    if distance > exisitingDistance {
                        maxRadius = distance
                    }
                    else {
                        maxRadius = exisitingDistance
                    }
                }
            }
            if flag {
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
