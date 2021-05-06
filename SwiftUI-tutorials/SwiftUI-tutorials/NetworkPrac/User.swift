//
//  User.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/06.
//

import Foundation

struct Name: Codable, CustomStringConvertible {
    var title: String
    var first: String
    var last: String

    var description: String {
        "[\(title)] \(last), \(first)"
    }
}

struct Photo: Codable {
    var large: String
    var medium: String
    var thumbnail: String
}

struct User: Codable, Identifiable, CustomStringConvertible {
    var id = UUID()
    var name: Name
    var photo: Photo

    private enum CodingKeys: String, CodingKey {
        case name
        case photo = "picture"
    }

    var description: String {
        name.description
    }
}
