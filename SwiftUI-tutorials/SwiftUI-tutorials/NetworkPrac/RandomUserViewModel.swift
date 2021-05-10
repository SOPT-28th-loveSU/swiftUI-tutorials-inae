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
    @Published var pageInfo: Info? {
        didSet {
            print(pageInfo)
        }
    }
    @Published var isLoading: Bool = false
    
    var baseUrl = "https://randomuser.me/api?results=100"
    var refreshActionSubject = PassthroughSubject<Void, Never>()
    var fetchMoreActionSubject = PassthroughSubject<Void, Never>()
    
    init() {
        print("init..")
        fetchRandomUser()
        
        refreshActionSubject.sink { [weak self] _ in
            guard let self = self else { return }
            
            self.fetchRandomUser()
        }.store(in: &subscription)
        
        fetchMoreActionSubject.sink { [weak self] _ in
            guard let self = self else { return }
            
            if !self.isLoading {
                self.fetchMore()
            }
        }.store(in: &subscription)
    }
    
    func fetchRandomUser() {
        print(#function, #line)
        
        AF.request(RandomUserRouter.getUsers())
            .publishDecodable(type: UserResponseData.self)
            .compactMap(\.value)
            .sink(receiveCompletion: { completion in
                print("데이터 스트림 완료 \(completion)")
            }, receiveValue: { receiveValue in
                print(#line, receiveValue.results.count)
                self.randomUsers = receiveValue.results
                self.pageInfo = receiveValue.info
            }).store(in: &subscription)
    }
    
    fileprivate func fetchMore() {
        guard let currPage = pageInfo?.page else { return }
        
        self.isLoading = true
        let pageToLoad = currPage + 1
        AF.request(RandomUserRouter.getUsers(page: pageToLoad))
            .publishDecodable(type: UserResponseData.self)
            .compactMap(\.value)
            .sink(receiveCompletion: { completion in
                print("데이터 스트림 완료 \(completion)")
                self.isLoading = false
            }, receiveValue: { receiveValue in
                print(#line, receiveValue.results.count)
                self.randomUsers += receiveValue.results
                self.pageInfo = receiveValue.info
            }).store(in: &subscription)
    }
}
