//
//  RandomUserListView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/06.
//

import Foundation
import Introspect
import SwiftUI
import UIKit

class RefreshControlHelper {
    var parentView: RandomUserList?
    var refreshControl: UIRefreshControl?

    @objc func didRefresh() {
        guard let parentView = parentView,
              let refresh = refreshControl else { return }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            print("refresh ,, :)")

            parentView.randomUserViewModel.refreshActionSubject.send()
            refresh.endRefreshing()
        }
    }
}

struct RandomUserList: View {
    @ObservedObject var randomUserViewModel = RandomUserViewModel()

    let refreshControleHelper = RefreshControlHelper()

    var body: some View {
        List(randomUserViewModel.randomUsers) { user in
            UserView(user)
                .onAppear {
                    print("appear")
                    if self.randomUserViewModel.randomUsers.last == user {
                        randomUserViewModel.fetchMoreActionSubject.send()
                    }
                }
        }.introspectTableView {
            self.configRefreshoControl($0)
        }

        if randomUserViewModel.isLoading {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: Color.orange))
                .scaleEffect(1.8, anchor: .center)
        }
    }
}

private extension RandomUserList {
    func configRefreshoControl(_ tableView: UITableView) {
        let tableRefresh = UIRefreshControl()
        refreshControleHelper.refreshControl = tableRefresh
        refreshControleHelper.parentView = self

        tableRefresh.addTarget(refreshControleHelper, action: #selector(refreshControleHelper.didRefresh), for: .valueChanged)

        tableView.refreshControl = tableRefresh
    }
}

struct RandomUserList_Previews: PreviewProvider {
    static var previews: some View {
        RandomUserList()
    }
}
