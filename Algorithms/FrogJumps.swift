//
//  FrogJumps.swift
//  Algorithms
//
//  Created by Akshay Jain on 28/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct FrogJumps {
    public func solution(_ initialPosition : Int, _ finalPosition : Int, _ jumpLength : Int) -> Int {
        if jumpLength == 0 || initialPosition > finalPosition {
            return 0
        }
        let distance = finalPosition - initialPosition
        let jumps = distance / jumpLength
        if distance % jumpLength == 0 {
            return jumps
        }
        return jumps + 1
    }
}
