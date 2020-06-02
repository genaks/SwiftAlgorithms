//
//  MissingElementTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 29/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class MissingElementTests: XCTestCase {
    var sut : MissingElement!

    override func setUpWithError() throws {
        sut = MissingElement()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMissingElement_ReturnsZero() {
        var array : [Int] = []
        let result = sut.solution(&array)
        XCTAssertEqual(result, 0)
    }
    
    func testMissingElement1() {
        var array : [Int] = [1, 2, 4]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 3)
    }
    
    func testMissingElement2() {
        var array : [Int] = [2, 3, 1, 5]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 4)
    }
    
    func testMissingElement3() {
        var array : [Int] = [1, 3, 6, 4, 1, 2]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 5)
    }

}
