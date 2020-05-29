//
//  BinaryGapTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 27/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class BinaryGapTests: XCTestCase {
    
    var sut : BinaryGap!
    
    override func setUpWithError() throws {
        sut = BinaryGap()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBinaryGap_IsZero_Input0() {
        let result = sut.solution(0)
        XCTAssertEqual(result, 0)
    }
    
    func testBinaryGap_IsZero_Input1() {
        let result = sut.solution(1)
        XCTAssertEqual(result, 0)
    }
    
    func testBinaryGap_IsZero_Input4() {
        let result = sut.solution(4)
        XCTAssertEqual(result, 0)
    }
    
    func testBinaryGap_IsNotZero() {
        let result = sut.solution(9)
        XCTAssertEqual(result, 2)
    }
    
    func test1() {
        let result = sut.solution(1041)
        XCTAssertEqual(result, 5)
    }
    
    func test2() {
        let result = sut.solution(529)
        XCTAssertEqual(result, 4)
    }
    
    func test3() {
        let result = sut.solution(20)
        XCTAssertEqual(result, 1)
    }
    
    func testPower() {
        let result = pow(2, 0)
        XCTAssertEqual(result, 1)
    }
}
