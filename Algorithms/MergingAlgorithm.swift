
//
//  MergingAlgorithm.swift
//  Algorithms
//
//  Created by Akshay Jain on 25/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct MergingAlgorithm {
    
    func mergeLists(listArray : [Int]) -> Int {
        if listArray.count < 2{
            return 0
        }
        var sortedArray = listArray.sorted()
        var totalTime = 0
        while sortedArray.count > 1 {
            let timeToMerge = sortedArray[0] + sortedArray[1]
            sortedArray.remove(at: 0)
            sortedArray.remove(at: 0)
            sortedArray.append(timeToMerge)
            sortedArray.sort()
            totalTime += timeToMerge
        }
        return totalTime
    }
}
