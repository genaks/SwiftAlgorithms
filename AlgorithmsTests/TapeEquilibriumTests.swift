//
//  TapeEquilibriumTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 30/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class TapeEquilibriumTests: XCTestCase {
    
    var sut : TapeEquilibrium!

    override func setUpWithError() throws {
        sut = TapeEquilibrium()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test1() {
        var array : [Int] = []
        let result = sut.solution(&array)
        XCTAssertEqual(result, 0)
    }
    
    func test2() {
        var array : [Int] = [10]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 10)
    }
    
    func test3() {
        var array : [Int] = [1, 10]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 9)
    }
    
    func test4() {
        var array : [Int] = [3, 1, 2, 4, 3]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 1)
    }
    
    func test5() {
        var array : [Int] = [0, 2000]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 2000)
    }
    
    func test6() {
        var array : [Int] = [-3, -1, -2, -4, -3]
        let result = sut.solution(&array)
        XCTAssertEqual(result, 1)
    }
}
