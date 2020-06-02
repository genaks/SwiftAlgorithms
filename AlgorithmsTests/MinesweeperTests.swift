//
//  MinesweeperTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 02/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class MinesweeperTests: XCTestCase {
    
    var sut : Minesweeper!

    override func setUpWithError() throws {
        
        sut = Minesweeper()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test0() {
        let result = sut.solution(inputArray: ["XOO", "OOX", "OXO"])
        XCTAssertEqual(result, [["X", "2", "1"], ["2", "3", "X"], ["1", "X", "2"]])
    }

}
