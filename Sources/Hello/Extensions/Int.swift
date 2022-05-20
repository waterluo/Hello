//
//  File.swift
//  
//
//  Created by sheng on 2022/5/20.
//

import Foundation

extension Int {
   public static func random() -> Int {
        return Int(arc4random())  // 这里只能生成正整数。
    }
    
   public static func random(in upper: Int) -> Int {
        Int(arc4random_uniform(UInt32(upper))) // [0, upper -1]
    }
    
   public static func random(_ count: Int, in range: CountableRange<Int>) -> [Int] {
        var array: [Int] = []
        let delta = range.upperBound - range.lowerBound
        for _ in 0..<count {
            array.append(range.lowerBound + (Int.random() % delta))
        }
        return array
    }
    
   public static func isAscOrder(_ array: [Int]) -> Bool {
        for i in 1..<array.count {
            if array[i-1] > array[i] {
                return false
            }
        }
        return true
    }
}
