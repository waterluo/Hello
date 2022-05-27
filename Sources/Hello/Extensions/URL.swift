//
//  File.swift
//  
//
//  Created by sheng on 2022/5/20.
//

import Foundation

/// extracting the actual url to an image from a url that might contain other info
/// (essentially looking for the imgurl key)
/// imgurl is a "well known" key that can be embedded in a url that says what the actual image url is
extension URL {
    
    public var imageURL: URL {
        for query in query?.components(separatedBy: "&") ?? [] {
            let queryComponents = query.components(separatedBy: "=")
            if queryComponents.count == 2 {
                if queryComponents[0] == "imgurl", let url = URL(string: queryComponents[1].removingPercentEncoding ?? "") {
                    return url
                }
            }
        }
        return baseURL ?? self
    }
}
