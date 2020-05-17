
//
//  ATOIConverter.swift
//  Algorithms
//
//  Created by Akshay Jain on 11/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct ATOICOnverter {
    
    func integerFromString(_ str: String) -> Int {

      var numberStr = ""
      var number = 0

      for character in str {
        
        if character == " " && numberStr.isEmpty {
            continue
        } else if Int(String(character)) != nil {
          numberStr.append(character)
        } else if (character == "+" || character == "-") && numberStr.isEmpty {
          numberStr.append(character)
        } else {
          break
        }
      }
    
      if let num = Int(numberStr) {
        if num > Int32.max {
          number = Int(Int32.max)
        } else if num < Int32.min {
          number = Int(Int32.min)
        } else {
          number = num
        }
      } else if numberStr.count > 1 {
        if numberStr.first == "-" {
          number = Int(Int32.min)
        } else {
          number = Int(Int32.max)
        }
      }
      return number
    }
}
