//
//  UserResponseData.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/06.
//

import Foundation

struct UserResponseData: Codable, CustomStringConvertible {
    var results: [User]
    var info: Info
}

struct Info: Codable {
    var seed: String
    var resultsCount: Int
    var page: Int
    var version: String

    private enum CodingKeys: String, CodingKey {
        case seed
        case resultsCount = "results"
        case page
        case version
    }

    var description: String {
        "results : \(resultsCount) & seed : \(seed)"
    }
}
