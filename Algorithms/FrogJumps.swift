//
//  FrogJumps.swift
//  Algorithms
//
//  Created by Akshay Jain on 28/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct FrogJumps {
    public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
        if D == 0 || X > Y {
            return 0
        }
        let distance = Y - X
        let jumps = distance / D
        if distance % D == 0 {
            return jumps
        }
        return jumps + 1
    }
}
