//
//  CompressionAlgorithmTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 25/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class CompressionAlgorithmTests: XCTestCase {
    
    var sut : CompressionAlgorithm!

    override func setUpWithError() throws {
        sut = CompressionAlgorithm()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCompressionAlgorithmReturnsZero_IfEmptyString() {
        var string = ""
        let result = sut.solution(&string, K: 0)
        XCTAssertEqual(result, 0)
    }
    
    func test2() {
        var string = "AA"
        let result = sut.solution(&string, K: 0)
        XCTAssertEqual(result, 2)
    }

    func test3() {
        var string = "AA"
        let result = sut.solution(&string, K: 0)
        XCTAssertEqual(result, 2)
    }

    func test4() {
        var string = "ABCDEFGHI"
        let result = sut.solution(&string, K: 9)
        XCTAssertEqual(result, 2)
    }

    func test5() {
        var string = "ABCDEFGHI"
        let result = sut.solution(&string, K: 11)
        XCTAssertEqual(result, 2)
    }

    func test6() {
        var string = "AAAXXXAAAAAAAA"
        let result = sut.solution(&string, K: 3)
        XCTAssertEqual(result, 3)
    }
    
    func test7() {
        var string = "ABBBCCDDCCC"
        let result = sut.solution(&string, K: 3)
        XCTAssertEqual(result, 5)
    }
    
    func test8() {
        var string = "ABBBCCDXACCCCCD"
        let result = sut.solution(&string, K: 3)
        XCTAssertEqual(result, 6)
    }

    func test9() {
        var string = "AAABBBCCDXACCCCCD"
        let result = sut.solution(&string, K: 3)
        XCTAssertEqual(result, 7)
    }
}
