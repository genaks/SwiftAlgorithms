//
//  OddOneOutTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 28/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class OddOneOutTests: XCTestCase {
    
    var sut : OddOneOut!

    override func setUpWithError() throws {
        sut = OddOneOut()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOddOneOut_EmptyInput() {
        var array : [Int] = []
        let result = sut.solution(&array)
        XCTAssertEqual(result, 0)
    }
    
    func testOddOneOut_EevenItems() {
        var array : [Int] = [1, 1]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 0)
    }
    
    func testOddOneOut_OneItem() {
        var array : [Int] = [1]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 1)
    }
    
    func testOddOneOut_1() {
        var array : [Int] = [1, 1, 2]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 2)
    }
    
    func testOddOneOut_2() {
        var array : [Int] = [9, 3, 9, 3, 9, 7, 9]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 7)
    }
    
    func testOddOneOut_3() {
        var array : [Int] = [1, 42, 1, 1, 1, 1, 1]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 42)
    }
    
}
