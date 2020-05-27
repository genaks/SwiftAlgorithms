//
//  CompressionAlgorithm.swift
//  Algorithms
//
//  Created by Akshay Jain on 25/05/2020.
//  Copyright © 2020 Akshay Jain. All rights reserved.
//

import Foundation

struct CompressionAlgorithm {
    
    func solution(s: String, k : Int) -> Int {
        if s.count < 3 {
            return s.count
        }
        else if k >= s.count - 1 {
            return ("\(s.count)" + String(Array(s)[0])).count
        }
        
        var charDictionary : [Character : Int] = [:]
        var start = 0
        var longestSequence = 0
        var repititions = 0
        
        var sequence = LongestSequence()
        var charArray = Array(s)
        for i in 0..<charArray.count {
            if charDictionary[charArray[i]] != nil {
                charDictionary[charArray[i]]! += 1
            }
            else {
                charDictionary[charArray[i]] = 1
            }
            repititions = charDictionary[charArray[i]]!

            if i - start - repititions + 1 > k
            {
                charDictionary[charArray[start]]! -= 1
                start += 1
            }

            if (i - start + 1 > longestSequence)
            {
                longestSequence = i - start + 1;
                sequence.endingIndex = i;
                sequence.startingIndex = i - longestSequence + 1;
                sequence.letter = charArray[i];
                sequence.occurences = longestSequence;
            }
        }
        var inputString = s
        var replacementString = ""
        for _ in 1..<sequence.occurences - k {
            replacementString += String(sequence.letter)
        }
        let startIndex = inputString.index(inputString.startIndex, offsetBy: sequence.startingIndex)
        let end = inputString.index(inputString.startIndex, offsetBy: sequence.startingIndex + sequence.occurences - 1)
        inputString.replaceSubrange(startIndex..<end, with: replacementString)
        
        var count = 1
        var currentChar : Character!
        var compressedString = ""
        
        charArray = Array(inputString)
        
        for i in 1..<charArray.count {
            currentChar = charArray[i]
            if charArray[i - 1] == charArray[i] {
                count += 1
            }
            else {
                if count > 1 {
                    compressedString += "\(count)"
                }
                compressedString += String(charArray[i - 1])
                count = 1
            }
            
            if i == inputString.count - 1 {
                if count > 1 {
                    compressedString += "\(count)"
                }
                compressedString += String(currentChar)
            }
        }
        return compressedString.count
    }
}

struct LongestSequence {
    var letter : Character!
    var endingIndex : Int!
    var startingIndex : Int!
    var occurences : Int!
}
