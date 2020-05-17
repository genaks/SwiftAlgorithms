//
//  HaystackTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 12/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class HaystackTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testReturnsZeroWhenNeedleIsEmpty() {
        let result = strStr().checkforNeedleInHaystack("hello", "")
        XCTAssertEqual(result, 0)
    }
    
    func testReturnsIndexWhenNeedleNotEmpty() {
        let result = strStr().checkforNeedleInHaystack("hello", "ll")
        XCTAssertEqual(result, 2)
    }
    
    func testIfReturns_MinusOne_WhenNeedleIsBiggerThanHaystack() {
        let result = strStr().checkforNeedleInHaystack("ll", "hello")
        XCTAssertEqual(result, -1)
    }
    
    func testForNegative() {
        let result = strStr().checkforNeedleInHaystack("aaaaa", "bba")
        XCTAssertEqual(result, -1)
    }
    
    func testForMissisippi () {
        let result = strStr().checkforNeedleInHaystack("mississippi", "issip")
        XCTAssertEqual(result, 4)
    }
}
