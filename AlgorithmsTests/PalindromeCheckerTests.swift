//
//  PalindromeCheckerTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 11/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class PalindromeCheckerTests: XCTestCase {

    var checker : PalindromeChecker!
    override func setUpWithError() throws {
        checker = PalindromeChecker()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPalindromeCheckerIsNotNil() {
        XCTAssertNotNil(checker)
    }
    
    func testIfReturnsTrueForEmptyString() {
        let isPalindrome = checker.checkForPalindrome("")
        XCTAssertEqual(isPalindrome, true)
    }
    
    func testIfReturnsFalseWhenNotAPalindrome() {
        let isPalindrome = checker.checkForPalindrome("akshay")
        XCTAssertEqual(isPalindrome, false)
    }
    
    func testIfReturnsTrueForPalindrome() {
        let isPalindrome = checker.checkForPalindrome("aka")
        XCTAssertEqual(isPalindrome, true)
    }
    
    func testShouldReturnTrueForPalindromesWithSpaces() {
        let isPalindrome = checker.checkForPalindrome("aka aka")
        XCTAssertEqual(isPalindrome, true)
    }
    
    func testPalindromesWithCapitalLetters() {
        let isPalindrome = checker.checkForPalindrome("AKA aka")
        XCTAssertEqual(isPalindrome, true)
    }
    
    func testStringsWithSpecialCharactersForPalindromes() {
        let isPalindrome = checker.checkForPalindrome("A man, a plan, a canal: Panama")
        XCTAssertEqual(isPalindrome, true)
    }
    
    func testOPForPalindrome() {
        let isPalindrome = checker.checkForPalindrome("0P")
        XCTAssertEqual(isPalindrome, false)
    }

}
