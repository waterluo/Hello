//
//  File.swift
//  
//
//  Created by sheng on 2022/5/20.
//

import Foundation

/// add RawRepresentable protocol conformance to CGSize and CGFloat
/// so that they can be used with @SceneStorage
/// we do this by first providing default implementations of rawValue and init(rawValue:)
///   in RawRepresentable when the thing in question is Codable (which both CGFloat and CGSize are)
/// then all it takes to make something that is Codable be RawRepresentable is to declare it to be so
/// (it will then get the default implementions needed to be a RawRepresentable)
extension RawRepresentable where Self: Codable {
    public var rawValue: String {
        if let json = try? JSONEncoder().encode(self), let string = String(data: json, encoding: .utf8) {
            return string
        } else {
            return ""
        }
    }
    public init?(rawValue: String) {
        if let value = try? JSONDecoder().decode(Self.self, from: Data(rawValue.utf8)) {
            self = value
        } else {
            return nil
        }
    }
}

