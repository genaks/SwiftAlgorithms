//
//  ArrayIntersection.swift
//  Algorithms
//
//  Created by Akshay Jain on 15/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct Intersection {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var mem1 = [Int: Int]()
        var mem2 = [Int: Int]()
        for num in nums1 {
            mem1[num, default: 0] += 1
        }
        for num in nums2 {
            mem2[num, default: 0] += 1
        }
        
        var res = [Int]()
        for (key, val) in mem1 {
            var t = mem2[key, default: 0]
            if t > 0 {
                t = min(t, val)
                for _ in 0..<t {
                    res.append(key)
                }
            }
        }
        return res
    }
}
