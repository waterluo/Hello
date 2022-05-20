//
//  File.swift
//  
//
//  Created by sheng on 2022/5/20.
//

import Foundation

extension Array {
    var oneAndOnly: Element? {
        if count == 1 {
            return first
        } else {
            return nil
        }
    }
}
