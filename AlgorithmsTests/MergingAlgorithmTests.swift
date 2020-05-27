//
//  MergingAlgorithmTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 25/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class MergingAlgorithmTests: XCTestCase {
    var sut : MergingAlgorithm!
    override func setUpWithError() throws {
        sut = MergingAlgorithm()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMergingAlgorithm_ReturnsZero_IfOneList() {
        let result = sut.mergeLists(listArray: [100])
        XCTAssertEqual(result, 0)
    }
    
    func testMergingAlgorithm() {
        let result = sut.mergeLists(listArray: [100, 250, 1000])
        XCTAssertEqual(result, 1700)
    }
    
    func testMergeAlgorithm_UnsortedList() {
        let result = sut.mergeLists(listArray: [250, 1000, 100])
        XCTAssertEqual(result, 1700)
    }
    
    func test1() {
        let result = sut.mergeLists(listArray: [100, 100, 100, 100, 100, 100])
        XCTAssertEqual(result, 1600)
    }

}
