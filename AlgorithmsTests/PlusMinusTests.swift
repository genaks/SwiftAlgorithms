//
//  PlusMinusTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 01/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class PlusMinusTests: XCTestCase {
    
    var sut : PlusMinus!

    override func setUpWithError() throws {
        sut = PlusMinus()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test0() {
        let string = ""
        let result = sut.solution(inputString: string)
        XCTAssertEqual(result.0, false)
    }
    
    func test1() {
        let string = "++--"
        let result = sut.solution(inputString: string)
        XCTAssertEqual(result.0, true)
        XCTAssertEqual(result.1, 2)
    }
    
    
    func test2() {
        let string = "+-+"
        let result = sut.solution(inputString: string)
        XCTAssertEqual(result.0, false)
    }
    
    func test3() {
        let string = "+++++++"
        let result = sut.solution(inputString: string)
        XCTAssertEqual(result.0, true)
        XCTAssertEqual(result.1, 0)
    }
    
    func test4() {
        let string = "------"
        let result = sut.solution(inputString: string)
        XCTAssertEqual(result.0, false)
    }
    
    func test5() {
        let string = "++--------------------------------------------------------------"
        let result = sut.solution(inputString: string)
        XCTAssertEqual(result.0, true)
        XCTAssertEqual(result.1, 62)
    }
    
}
