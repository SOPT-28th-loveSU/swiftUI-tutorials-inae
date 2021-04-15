//
//  CircleImageView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/15.
//

import SwiftUI

struct CircleImageView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .clipShape(Circle())
            .overlay(Circle().foregroundColor(.black).opacity(0.3))
            .overlay(
                Circle()
                    .stroke(Color.red, lineWidth: 4)
                    .padding(10)
            )
            .overlay(
                Circle()
                    .stroke(Color.orange, lineWidth: 4)
                    .padding(5)
            )
            .overlay(
                Circle()
                    .stroke(Color.yellow, lineWidth: 4)
            )
            .overlay(
                Text("닉네임").foregroundColor(.white).fontWeight(.bold).font(.system(size: 40))
            )
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(imageName: "swiftui")
    }
}
