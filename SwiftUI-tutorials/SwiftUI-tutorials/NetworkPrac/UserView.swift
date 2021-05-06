//
//  UserView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/06.
//

import Foundation
import SwiftUI

struct UserView: View {
    var randomUser: User

    init(_ randomUser: User) {
        self.randomUser = randomUser
    }

    var body: some View {
        HStack {
            ProfileImageView(imageURL: URL(string: randomUser.photo.thumbnail)!)
            Text("\(randomUser.name.first) \(randomUser.name.last)")
                .font(.system(.largeTitle))
                .fontWeight(.heavy)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            Spacer()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 120, alignment: .leading)
            .background(Color.pink)
            .cornerRadius(15)
            .padding(.horizontal, 10)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(User(name: Name(title: "타이틀", first: "이인", last: "애"), photo: Photo(large: "https://randomuser.me/api/portraits/thumb/men/66.jpg", medium: "https://randomuser.me/api/portraits/thumb/men/66.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/66.jpg")))
    }
}
