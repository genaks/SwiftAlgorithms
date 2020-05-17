//
//  SudokuValidatorTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 15/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class SudokuValidatorTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSudokuValidtor_ReturnsTrue() {
        let validator = SudokuValidator()
        let input : [[Character]] = [
            ["5","3",".",".","7",".",".",".","."],
            ["6",".",".","1","9","5",".",".","."],
            [".","9","8",".",".",".",".","6","."],
            ["8",".",".",".","6",".",".",".","3"],
            ["4",".",".","8",".","3",".",".","1"],
            ["7",".",".",".","2",".",".",".","6"],
            [".","6",".",".",".",".","2","8","."],
            [".",".",".","4","1","9",".",".","5"],
            [".",".",".",".","8",".",".","7","9"]
        ]
        let result = validator.validateSudoku(input: input)
        XCTAssertEqual(result, true)
    }
    
    func testSudokuValidtor_ReturnsFalse() {
        let validator = SudokuValidator()
        let input : [[Character]] = [
            ["5","3",".",".","7",".",".",".","."],
            ["6",".",".","1","9","5",".",".","."],
            [".","9","8",".",".",".",".","6","."],
            ["8",".",".",".","6",".",".",".","3"],
            ["4",".",".","8",".","3",".",".","1"],
            ["7",".",".",".","2",".",".",".","6"],
            [".","6",".",".",".",".","2","8","."],
            [".",".",".","4","1","9",".",".","5"],
            [".",".",".",".","8",".",".","7","9"]
        ]
        let result = validator.validateSudoku(input: input)
        XCTAssertEqual(result, true)
    }
}
