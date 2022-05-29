//
//  File.swift
//  
//
//  Created by sheng on 2022/5/20.
//

import Foundation

extension Int {
    
    public static func random() -> Int {
        Int(arc4random())  // 这里只能生成正整数。
    }
    
    public static func random(in upper: Int) -> Int {
        Int(arc4random_uniform(UInt32(upper))) // [0, upper -1]
    }
    
    public static func random(count: Int, in range: CountableClosedRange<Int>) -> [Int] {
        var array: [Int] = []
        let delta = range.upperBound - range.lowerBound + 1
        for _ in 0..<count {
            array.append(range.lowerBound + (Int.random() % delta))
        }
        return array
    }
    
    // 尾部有序
    public static func tailAscOrder(disorderCount: Int, in range: CountableClosedRange<Int>) -> [Int] {
        let array = Array(range)
        if disorderCount > array.count {
            return array
        }
        return  reverse(array: array, begin: 0, end: disorderCount)
    }
    
    // 反转一个数组,索引范围是[begin, end)
    public static func reverse(array: [Int], begin: Int, end: Int) -> [Int] {
        var result = array
        let count = (end - begin) >> 1
        let sum = begin + end - 1
        for i in begin ..< begin + count {
            let j = sum - i
            let tmp = result[i]
            result[i] = result[j]
            result[j] = tmp
        }
        return result
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
