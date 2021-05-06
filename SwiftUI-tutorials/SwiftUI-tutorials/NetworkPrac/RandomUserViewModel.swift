//
//  RandomUserViewModel.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/06.
//

import Alamofire
import Combine
import Foundation

class RandomUserViewModel: ObservableObject {
    var subscription = Set<AnyCancellable>()
    
    @Published var randomUsers = [User]()
    
    var baseUrl = "https://randomuser.me/api?results=100"
    
    init() {
        print("init..")
        fetchRandomUser()
    }
    
    func fetchRandomUser() {
        print(#function, #line)
        AF.request(baseUrl)
            .publishDecodable(type: UserResponseData.self)
            .compactMap(\.value)
            .map(\.results)
            .sink(receiveCompletion: { completion in
                print("데이터 스트림 완료 \(completion)")
            }, receiveValue: { receiveValue in
                print(#line, receiveValue.count)
                self.randomUsers = receiveValue
            }).store(in: &subscription)
    }
}
