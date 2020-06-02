//
//  LocationName.swift
//  Algorithms
//
//  Created by Akshay Jain on 01/06/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct LocationName {
    func solution(inputArray : [String]) -> String {
        if inputArray.count == 0 {
            return ""
        }
        var charDictionary : [String : String] = [:]
        var startingLetter = inputArray[0].components(separatedBy: ">")[0]
        for string in inputArray {
            let components = string.components(separatedBy: ">")
            charDictionary[components[0]] = components[1]
        }
        for key in charDictionary.keys {
            var count = 1
            for value in charDictionary.values {
                if key == value {
                    count += 1
                }
            }
            if count == 1 {
                startingLetter = key
                break
            }
        }
        var outputString = startingLetter
        var letter = startingLetter
        while charDictionary[letter] != nil {
            outputString.append(String(charDictionary[letter]!))
            letter = charDictionary[letter]!
        }
        return outputString
    }
}
