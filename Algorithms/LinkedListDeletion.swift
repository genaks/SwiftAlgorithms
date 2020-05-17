//
//  LinkedListDeletion.swift
//  Algorithms
//
//  Created by Akshay Jain on 16/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

public class ListNode : Equatable {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }

public func == (lhs: ListNode, rhs: ListNode) -> Bool {
    if lhs.val != rhs.val {
        return false
    }
    if lhs.next != rhs.next {
        return false
    }
    return true
}

class LinkedListDeletion {
    func deleteNode(_ node: ListNode?) {
        node!.val = node!.next!.val
        node!.next! = node!.next!.next!
    }
}
