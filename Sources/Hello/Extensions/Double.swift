//
//  File.swift
//  
//
//  Created by sheng on 2022/6/10.
//

import Foundation

extension Double {
    public static func random(lower: Double = 0.0, _ upper: Double = 1.0) -> Double {
        return Double(Double(arc4random()) / Double(UINT32_MAX)) * (upper - lower) + lower
    }
    
    public static func random() -> Double {
        srand48(Int(time(nil)))    //种子以时间来生成，若种子固定，则生成随机数也是固定的
        return drand48()
    }
}
