//
//  MissingElement.swift
//  Algorithms
//
//  Created by Akshay Jain on 29/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct MissingElement {
    public func solution(_ A : inout [Int]) -> Int {
        if A.count == 0 {
            return 1
        }
        A.sort()
        var missingElement = 1
        for item in A {
            if missingElement == item {
                missingElement += 1
            }
            else if missingElement < item {
                break
            }
        }
        return missingElement
    }
}
