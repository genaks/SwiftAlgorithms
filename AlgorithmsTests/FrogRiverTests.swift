//
//  FrogRiverTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 01/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class FrogRiverTests: XCTestCase {
    
    var sut : FrogRiver!

    override func setUpWithError() throws {
        sut = FrogRiver()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test0() {
        var array : [Int] = []
        let result = sut.solution(5, &array)
        XCTAssertEqual(result, -1)
    }
    
    func test1() {
        var array : [Int] = [1, 3, 1, 4, 2, 3, 5, 4]
        let result = sut.solution(5, &array)
        XCTAssertEqual(result, 6)
    }

}
