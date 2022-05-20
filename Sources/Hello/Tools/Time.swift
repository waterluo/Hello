//
//  File.swift
//  
//
//  Created by sheng on 2022/5/20.
//

import Foundation
import QuartzCore

public struct Time {
    public static func test(_ title: String,_ task: ()->Void) {
        let begin = CACurrentMediaTime() // 秒为单位
        task()
        let end = CACurrentMediaTime()
        let delta = (end - begin)
        print("[\(title)] 耗时：\(String(format: "%.3f", delta * 1000))毫秒")
    }
}
