//
//  DeletionTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 16/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import XCTest
@testable import Algorithms

class DeletionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testDeletion() {
        let list = ListNode(4)
        list.next = ListNode(5)
        list.next?.next = ListNode(1)
        list.next?.next?.next = ListNode(9)
        list.next?.next?.next?.next = nil
        XCTAssertEqual(list.next?.next, ListNode(9))
    }

}
