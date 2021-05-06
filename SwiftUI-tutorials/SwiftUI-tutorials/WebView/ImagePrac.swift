//
//  ImagePrac.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/15.
//

import SwiftUI

struct ImagePrac: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("icecream")
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: -280)
                
                CircleImageView(imageName: "swiftui")
                
                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://www.naver.com"),
                    label: {
                        Text("이동")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 30)
                            .padding(.vertical, 10)
                            .background(Color.blue)
                            .cornerRadius(15)

                    })
                    .padding(50)
            }
        }
    }
}

struct ImagePrac_Previews: PreviewProvider {
    static var previews: some View {
        ImagePrac()
    }
}
