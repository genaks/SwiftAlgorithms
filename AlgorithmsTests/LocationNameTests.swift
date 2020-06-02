//
//  LocationNameTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 01/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class LocationNameTests: XCTestCase {
    
    var sut : LocationName!

    override func setUpWithError() throws {
        sut = LocationName()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test0() {
        let array : [String] = []
        let result = sut.solution(inputArray: array)
        XCTAssertEqual(result, "")
    }
    

    func test1() {
        let array = ["S>P", "A>I", "P>A", "I>N"]
        let result = sut.solution(inputArray: array)
        XCTAssertEqual(result, "SPAIN")
    }
    
    func test2() {
        let array = ["E>R", "P>E", "R>U"]
        let result = sut.solution(inputArray: array)
        XCTAssertEqual(result, "PERU")
    }
    
}
