//
//  SudokuValidator.swift
//  Algorithms
//
//  Created by Akshay Jain on 15/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct SudokuValidator {
    func validateSudoku(input : [[Character]]) -> Bool {
        var rows: [[Int: Int]] = Array(repeating: [:], count: 9)
        var columns: [[Int: Int]] = Array(repeating: [:], count: 9)
        var boxes: [[Int: Int]] = Array(repeating: [:], count: 9)
        
        
        for i in 0..<9 {
            for j in 0..<9 {
                let num = input[i][j]
                if num != "." {
                    let n = Int(String(num))
                    let box_index = (i / 3) * 3 + (j / 3)
                    
                    rows[i][n!, default: 0] += 1
                    columns[j][n!, default: 0] += 1
                    boxes[box_index][n!, default: 0] += 1

                    if rows[i][n!]! > 1 || columns[j][n!]! > 1 || boxes[box_index][n!]! > 1 {
                        return false
                    }
                }
            }
        }
        return true
    }
}
