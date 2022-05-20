//
//  File.swift
//  
//
//  Created by sheng on 2022/5/20.
//

import Foundation

/// if you use a Set to represent the selection of emoji in HW5
/// then you might find this syntactic sugar function to be of use
@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension Set where Element: Identifiable {
    mutating func toggleMembership(of element: Element) {
        if let index = index(matching: element) {
            remove(at: index)
        } else {
            insert(element)
        }
    }
}


