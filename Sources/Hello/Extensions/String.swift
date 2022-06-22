//
//  File.swift
//  
//
//  Created by sheng on 2022/5/20.
//

import Foundation

extension String {
    public var removingDuplicateCharacters: String {
        reduce(into: "") { sofar, element in
            if !sofar.contains(element) {
                sofar.append(element)
            }
        }
    }
}

