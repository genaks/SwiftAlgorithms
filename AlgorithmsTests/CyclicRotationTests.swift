//
//  CyclicRotationTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 28/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class CyclicRotationTests: XCTestCase {

    var sut : CyclicRotation!
    
    override func setUpWithError() throws {
        sut = CyclicRotation()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCyclicRotation_LessThan2Elements() {
        var array = [0]
        var result = sut.solution(&array, 5)
        XCTAssertEqual(result, array)
        
        array = []
        result = sut.solution(&array, 10)
        XCTAssertEqual(result, array)
    }
    
    func testCyclicRotation_KIsZero() {
        var array = [0, 1, 1, 1, 1]
        let result = sut.solution(&array, 0)
        XCTAssertEqual(result, array)
    }
    
    func testCyclicRotation_KIsArrayCount() {
        var array = [0, 1, 1, 1, 1]
        let result = sut.solution(&array, 5)
        XCTAssertEqual(result, array)
    }
    
    func testCyclicRotation() {
        var array = [0, 1, 1, 1, 1]
        let result = sut.solution(&array, 4)
        XCTAssertEqual(result, [1, 0, 1, 1, 1])
    }
    
    func testCyclicRotation1() {
        var array = [3, 8, 9, 7, 6]
        let result = sut.solution(&array, 3)
        XCTAssertEqual(result, [9, 7, 6, 3, 8])
    }
    
    func testCyclicRotation11() {
        var array = [3, 8, 9, 7, 6]
        let result = sut.solution(&array, 8)
        XCTAssertEqual(result, [9, 7, 6, 3, 8])
    }
    
    func testCyclicRotation2() {
        var array = [1, 2, 3, 4]
        let result = sut.solution(&array, 4)
        XCTAssertEqual(result, [1, 2, 3, 4])
    }
    
    func testCyclicRotation3() {
        var array = [0, 0, 0]
        let result = sut.solution(&array, 1)
        XCTAssertEqual(result, [0, 0, 0])
    }
    
    func testCyclicRotation4() {
        var array = [0, 0, 0]
        let result = sut.solution(&array, 5)
        XCTAssertEqual(result, [0, 0, 0])
    }
    
    func testReverse() {
        var array = [0,1]
        let result = sut.reverse(&array, 0, 2)
        XCTAssertEqual(result, [1,0])
    }
    
    func testReverse2() {
        var array = [0,1, 2, 3, 4, 5]
        let result = sut.reverse(&array, 0, 6)
        XCTAssertEqual(result, [5, 4, 3, 2, 1, 0])
    }
    
    func testReverse3() {
        var array = [0,1, 2, 3, 4, 5]
        let result = sut.reverse(&array, 0, 2)
        XCTAssertEqual(result, [1, 0, 2, 3, 4, 5])
    }
    
    func testReverse4() {
        var array = [0,1, 2, 3, 4, 5]
        let result = sut.reverse(&array, 4, 6)
        XCTAssertEqual(result, [0, 1, 2, 3, 5, 4])
    }

}
