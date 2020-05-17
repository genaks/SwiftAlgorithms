//
//  PlusOneTester.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 15/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class PlusOneTester: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPlusOne() {
        let plusOne = PlusOne()
        let result = plusOne.plusOne([9, 9, 9])
        XCTAssertEqual(result, [1, 0, 0, 0])
    }
    
    func testNormalPlusOne() {
        let plusOne = PlusOne()
        let result = plusOne.plusOne([1, 2, 3])
        XCTAssertEqual(result, [1, 2, 4])
    }
    
    func testTrailingZeroes() {
        let plusOne = PlusOne()
        let result = plusOne.plusOne([1, 2, 2, 1, 0])
        XCTAssertEqual(result, [1, 2, 2, 1, 1])
    }

}
