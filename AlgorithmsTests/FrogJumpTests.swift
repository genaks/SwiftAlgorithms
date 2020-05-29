//
//  FrogJumpTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 28/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class FrogJumpTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFrogJumpsReturnsZero_IfJumpSizeZero() {
        let sut = FrogJumps()
        let result = sut.solution(10, 85, 0)
        XCTAssertEqual(result, 0)
    }
    
    func testFrogJumps1() {
        let sut = FrogJumps()
        let result = sut.solution(10, 85, 30)
        XCTAssertEqual(result, 3)
    }
    
    func testFrogJumps2() {
        let sut = FrogJumps()
        let result = sut.solution(10, 100, 2)
        XCTAssertEqual(result, 45)
    }
    
    func testFrogJumps3() {
        let sut = FrogJumps()
        let result = sut.solution(1, 1000000000, 1)
        XCTAssertEqual(result, 999999999)
    }
    
    func testFrogJumps4() {
        let sut = FrogJumps()
        let result = sut.solution(1, 1000000000, 2)
        XCTAssertEqual(result, 500000000)
    }
    
    func testFrogJumps5() {
        let sut = FrogJumps()
        let result = sut.solution(1, 1000000000, 1000000000)
        XCTAssertEqual(result, 1)
    }
    
    func testFrogJumps6() {
        let sut = FrogJumps()
        let result = sut.solution(2, 1, 100)
        XCTAssertEqual(result, 0)
    }
    
    func testFrogJumps7() {
        let sut = FrogJumps()
        let result = sut.solution(1, 5, 1)
        XCTAssertEqual(result, 4)
    }
    
    func testFrogJumps8() {
        let sut = FrogJumps()
        let result = sut.solution(1, 5, 4)
        XCTAssertEqual(result, 1)
    }
}
