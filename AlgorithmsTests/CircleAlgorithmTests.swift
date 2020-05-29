//
//  CircleAlgorithmTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 26/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class CircleAlgorithmTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCircleAlgorithmReturnsZero_IfNoElement() {
        let sut = CircleAlgorithm()
        let result = sut.solution(S: "", X: [], Y: [])
        XCTAssertEqual(result, 0)
    }
    
    func testCircleAlgorithmReturnsZero_IfMalformedInput() {
        let sut = CircleAlgorithm()
        let result = sut.solution(S: "AB", X: [1], Y: [2,1])
        XCTAssertEqual(result, 0)
    }
    
    func testCircleAlgorithm() {
        let sut = CircleAlgorithm()
        let result = sut.solution(S: "AB", X: [1,2], Y: [2,1])
        XCTAssertEqual(result, 2)
    }
    
    func testCircleAlgorithm_DiffierentOutput() {
        let sut = CircleAlgorithm()
        let result = sut.solution(S: "ABCDA", X: [2, -1, -4, -3, 3], Y: [2, -2, 4, 1, -3])
        XCTAssertEqual(result, 3)
    }
    
    func testCircleAlgorithm_TestCase3() {
        let sut = CircleAlgorithm()
        let result = sut.solution(S: "ABB", X: [1, -2, -2], Y: [1, -2, 2])
        XCTAssertEqual(result, 1)
    }
    
    func testCircleAlgorithm_TestCase4() {
        let sut = CircleAlgorithm()
        let result = sut.solution(S: "CCD", X: [1, -1, 2], Y: [1, -1, -2])
        XCTAssertEqual(result, 0)
    }
    
    func testCircleAlgorithm_TestCase5() {
        let sut = CircleAlgorithm()
        let result = sut.solution(S: "ABCDA", X: [2, -1, -4, -3, 3], Y: [2, -2, 4, 1, -3])
        XCTAssertEqual(result, 3)
    }
    
    func testTime() {
        let sut = CircleAlgorithm()
        let startTime = CFAbsoluteTimeGetCurrent()
        let _ = sut.solution(S: "ABCDA", X: [2, -1, -4, -3, 3], Y: [2, -2, 4, 1, -3])
        let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
        print("Time elapsed for \(timeElapsed) s.")
    }
    
    func testReturnsDistance() {
        let sut = CircleAlgorithm()
        var result = sut.distanceFromZero(x: 3,y: 4)
        XCTAssertEqual(result, 5)
        result = sut.distanceFromZero(x: 1,y: 1)
        XCTAssertEqual(result, sqrt(2))
        
        result = sut.distanceFromZero(x: -1,y: 1)
        XCTAssertEqual(result, sqrt(2))
    }

}
