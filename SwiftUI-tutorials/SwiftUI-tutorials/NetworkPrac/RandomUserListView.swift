//
//  RandomUserListView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/06.
//

import Foundation
import SwiftUI

struct RandomUserList: View {
    @ObservedObject var randomUserViewModel = RandomUserViewModel()

    var body: some View {
        List(randomUserViewModel.randomUsers) { user in
            UserView(user)
        }
    }
}

struct RandomUserList_Previews: PreviewProvider {
    static var previews: some View {
        RandomUserList()
    }
}
