//
//  strStr.swift
//  Algorithms
//
//  Created by Akshay Jain on 12/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct strStr {
    func checkforNeedleInHaystack(_ haystack : String, _ needle : String) -> Int {
        if needle.count == 0 {
            return 0
        }
        else if needle.count > haystack.count {
            return -1
        }
        else {
            let haystackArray = Array(haystack)
            let needleArray = Array(needle)
            var checking = false
            var index = -1
            for i in 0..<haystackArray.count {
                if !checking {
                    if haystackArray[i] == needleArray[0] {
                        index = i
                        checking = true
                    }
                }
                else {
                    if (i - index < needleArray.count) {
                        if haystackArray[i] != needleArray[i - index] {
                            index = -1
                            checking = false
                        }
                        else {
                            if i - index == needleArray.count - 1 {
                                return index
                            }
                        }
                    }
                }
            }
            return index
        }
    }
}
