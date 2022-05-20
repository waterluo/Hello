//
//  File.swift
//  
//
//  Created by sheng on 2022/5/20.
//

import Foundation

public struct Time {
    public static func test(_ title: String,_ task: ()->Void) {
        print(title)
        let begin = CFAbsoluteTimeGetCurrent()
        task()
        let end = CFAbsoluteTimeGetCurrent()
        let delta = (end - begin)
        print("耗时：\(String(format: "%.3f", delta * 1000))毫秒")
    }
}
