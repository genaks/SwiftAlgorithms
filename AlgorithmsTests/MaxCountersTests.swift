//
//  MaxCountersTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 02/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class MaxCountersTests: XCTestCase {
    
    var sut : MaxCounters!
    
    override func setUpWithError() throws {
        sut = MaxCounters()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test0() {
        var array : [Int] = [3, 4, 4, 6, 1, 4, 4]
        let result = sut.solution(5, &array)
        XCTAssertEqual(result, [3, 2, 2, 4, 2])
    }
    
    func test1() {
        var array : [Int] = []
        let result = sut.solution(5, &array)
        XCTAssertEqual(result, [0, 0, 0, 0, 0])
    }
    
    func test2() {
        var array : [Int] = [3, 4, 4, 6, 1, 4, 4]
        let result = sut.solution(10, &array)
        XCTAssertEqual(result, [0, 0, 0, 0, 0])
    }

}
