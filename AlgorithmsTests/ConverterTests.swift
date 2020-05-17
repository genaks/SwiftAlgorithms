//
//  ConverterTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 11/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class ConverterTests: XCTestCase {

    var converter : ATOICOnverter!
    
    override func setUpWithError() throws {
        converter = ATOICOnverter()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIfConverterReturnsMaxForOverflowValue() {
        let result = converter.integerFromString("91283472332")
        XCTAssertEqual(result, Int(Int32.max))
    }
    
    func testIfConverterReturnsMinForUnderflowValue() {
        let result = converter.integerFromString("-91283472332")
        XCTAssertEqual(result, Int(Int32.min))
    }
    
    func testIfConvertsStringToInteger() {
        let result = converter.integerFromString("42")
        XCTAssertEqual(result, 42)
    }
    
    func testForStringWithWhitespaces() {
        let result = converter.integerFromString("   -42")
        XCTAssertEqual(result, -42)
    }
    
    func testForCombinationWithCharactersFirst() {
        let result = converter.integerFromString("aks   -42")
        XCTAssertEqual(result, 0)
    }
    
    func test4193withWords() {
        let result = converter.integerFromString("4193 with words")
        XCTAssertEqual(result, 4193)
    }
    
    func testNew() {
        let result = converter.integerFromString("words and 987")
        XCTAssertEqual(result, 0)

    }
    
    func testMinus() {
        let result = converter.integerFromString("-")
        XCTAssertEqual(result, 0)
    }
    
    func testAgain() {
        let result = converter.integerFromString("   -115579378e25")
        XCTAssertEqual(result, -115579378)
    }
    
    func testTwo() {
        let result = converter.integerFromString("+11e530408314")
        XCTAssertEqual(result, 11)
    }
}
