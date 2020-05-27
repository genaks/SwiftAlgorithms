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
        let result = sut.solution(s: "", k: 0)
        XCTAssertEqual(result, 0)
    }
    
    func test2() {
        let result = sut.solution(s: "AA", k: 0)
        XCTAssertEqual(result, 2)
    }
    
    func test3() {
        let result = sut.solution(s: "AB", k: 0)
        XCTAssertEqual(result, 2)
    }
    
    func test4() {
        let result = sut.solution(s: "ABCDEFGHI", k: 9)
        XCTAssertEqual(result, 2)
    }
    
    func test5() {
        let result = sut.solution(s: "ABCDEFGHI", k: 11)
        XCTAssertEqual(result, 2)
    }
    
    func test6() {
        let result = sut.solution(s: "AAAXXXAAAAAAAA", k: 3)
        XCTAssertEqual(result, 3)
    }
    
    func test7() {
        let result = sut.solution(s: "ABBBCCDDCCC", k: 3)
        XCTAssertEqual(result, 5)
    }
    
    func test8() {
        let result = sut.solution(s: "ABBBCCDXACCCCCD", k: 3)
        XCTAssertEqual(result, 6)
    }
    
    func test9() {
        let result = sut.solution(s: "AAABBBCCDXACCCCCD", k: 3)
        XCTAssertEqual(result, 7)
    }
}
