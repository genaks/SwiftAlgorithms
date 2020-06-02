//
//  Minesweeper.swift
//  Algorithms
//
//  Created by Akshay Jain on 02/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct Minesweeper {
    func solution(inputArray : [String]) -> [[String]] {
        var output : [[String]] = []
        var multiArray : [[String]] = []
        for i in 0..<inputArray.count {
            var array : [String] = []
            for string in Array(inputArray[i]) {
                array.append(String(string))
            }
            multiArray.append(array)
        }
        for i in 0..<multiArray.count {
            let row = multiArray[i]
            var outputRow : [String] = []
            for j in 0..<row.count {
                let item = row[j]
                if item == "X" {
                    outputRow.append("X")
                }
                else {
                    var horizontalRange = (j-1)...(j+1)
                    var verticalRange = (i-1)...(i+1)
                    if i == 0 {
                        verticalRange = 0...i+1
                    }
                    if i == multiArray.count - 1 {
                        verticalRange = i-1...i
                    }
                    if j == 0 {
                        horizontalRange = 0...j+1
                    }
                    if j == row.count - 1 {
                        horizontalRange = j-1...j
                    }
                    var count = 0
                    for m in verticalRange {
                        for n in horizontalRange {
                            if multiArray[m][n] == "X" {
                                count += 1
                            }
                        }
                    }
                    outputRow.append("\(count)")
                }
            }
            output.append(outputRow)
        }
        return output
    }
}
