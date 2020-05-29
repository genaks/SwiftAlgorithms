//
//  CyclicRotationTests.swift
//  AlgorithmsTests
//
//  Created by Akshay Jain on 28/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct CyclicRotation {
    public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
        if A.count < 2 {
            return A
        }
        if K == 0 || K == A.count {
            return A
        }
        
        var i = K
        if i > A.count {
            i = i % A.count
        }
        
        A = reverse(&A, 0, A.count)
        A = reverse(&A, 0, i)
        A = reverse(&A, i, A.count)

        return A
    }
    
    func reverse(_ A : inout [Int], _ start : Int, _ end : Int) -> [Int] {
        var j = end - 1
        var i = start
        while i < j {
            let temp = A[i]
            A[i] = A[j]
            A[j] = temp
            i += 1
            j -= 1
        }
        return A
    }
}
