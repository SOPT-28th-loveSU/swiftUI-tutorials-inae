//
//  SharedUser.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/07.
//

import Foundation

class SharedUser: ObservableObject {
    @Published var name: String
    @Published var age: Int

    init() {
        name = "김철수"
        age = 20
    }
}
