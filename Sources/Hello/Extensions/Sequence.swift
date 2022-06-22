//
//  File.swift
//  
//
//  Created by sheng on 2022/6/22.
//

import Foundation

extension Sequence{
    public func scan<ResultElement>(
        _ initial: ResultElement,
        _ nextPartialResult: (ResultElement, Element) -> ResultElement
    ) -> [ResultElement] {
        var result:[ResultElement] = []
        for x in self {
            result.append(nextPartialResult(result.last ?? initial, x))
        }
        return result
    }
}
