//
//  AlgorithmsTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 11/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class AlgorithmsTests: XCTestCase {

    var checker : AnagramChecker!
    
    override func setUpWithError() throws {
        checker = AnagramChecker()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAnagramCheckerIsNotNil() {
        XCTAssertNotEqual(checker, nil)
    }
    
    func testShouldReturnFalseOnDifferentLengths() {
        let isAnagram = checker.check("anag", "")
        XCTAssertEqual(isAnagram, false)
    }
    
    func testShouldReturnTrueForAnagrams() {
        let isAnagram = checker.check("anag", "gana")
        XCTAssertEqual(isAnagram, true)
    }
    
    func testShouldReturnFalseForNonAnagrams()  {
        let isAnagram = checker.check("anag", "adsf")
        XCTAssertEqual(isAnagram, false)
    }
    
    func testIfWordsWithCapitalLettersAreAnagrams() {
        let isAnagram = checker.check("anagadsn", "anag")
        XCTAssertEqual(isAnagram, false)
    }

}
