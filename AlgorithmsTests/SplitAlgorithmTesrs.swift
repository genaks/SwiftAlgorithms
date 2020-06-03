//
//  SplitAlgorithmTesrs.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 27/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class SplitAlgorithmTesrs: XCTestCase {
    var sut : SplitAlgorithm!

    override func setUpWithError() throws {
        sut = SplitAlgorithm()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test1() {
        var string = "aa"
        let result = sut.solution(&string)
        XCTAssertEqual(result, 0)
    }
    func test2() {
        var string = "bb"
        let result = sut.solution(&string)
        XCTAssertEqual(result, 0)
    }
    func test3() {
        var string = "a"
        let result = sut.solution(&string)
        XCTAssertEqual(result, 0)
    }
    func test4() {
        var string = ""
        let result = sut.solution(&string)
        XCTAssertEqual(result, 0)
    }
    
    func test5() {
        var string = "bbbbb"
        let result = sut.solution(&string)
        XCTAssertEqual(result, 6)
    }
    
    func test6() {
        var string = "ababa"
        let result = sut.solution(&string)
        XCTAssertEqual(result, 4)
    }
    
    func test7() {
        var string = "babaa"
        let result = sut.solution(&string)
        XCTAssertEqual(result, 2)
    }
    
    
    func test8() {
        var string = "aabaaba"
        let result = sut.solution(&string)
        XCTAssertEqual(result, 0)
    }
}
