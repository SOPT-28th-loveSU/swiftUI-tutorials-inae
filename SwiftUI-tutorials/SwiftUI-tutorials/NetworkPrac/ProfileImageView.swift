//
//  ProfileCardView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/06.
//

import Foundation
import SwiftUI
import URLImage

struct ProfileImageView: View {
    var imageURL: URL

    var body: some View {
        URLImage(url: imageURL) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
//        .frame(width: 50, height: 50, alignment: .center)
        .clipShape(Circle(), style: FillStyle())
        .overlay(Circle().stroke(Color.blue, lineWidth: 3))
        .padding()
    }
}

struct ProfileCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImageView(imageURL: URL(string: "https://randomuser.me/api/portraits/women/21.jpg")!)
    }
}
