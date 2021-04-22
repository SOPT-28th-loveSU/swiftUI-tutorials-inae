//
//  TotalCardView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/22.
//

import SwiftUI

struct TotalCardView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "line.horizontal.3")
                            .font(.largeTitle)
                        Spacer()
                        Image(systemName: "person.crop.circle.fill")
                            .font(.largeTitle)
                    }

                    Text("타이틀 메뉴")
                        .fontWeight(.black)
                        .font(.system(size: 40))
                        .padding(.vertical, 10)

                    VStack {
                        ProjectCardView()
                        BasicCardView(title: "책 읽기", start: "10AM", end: "12PM", icon: "book.fill", bgColor: .black)
                        BasicCardView(title: "책 읽기", start: "10AM", end: "12PM", icon: "book.fill", bgColor: .purple)
                        BasicCardView(title: "책 읽기", start: "10AM", end: "12PM", icon: "book.fill", bgColor: .orange)
                        BasicCardView(title: "책 읽기", start: "10AM", end: "12PM", icon: "book.fill", bgColor: .blue)
                        BasicCardView(title: "책 읽기", start: "10AM", end: "12PM", icon: "book.fill", bgColor: .green)
                        BasicCardView(title: "책 읽기", start: "10AM", end: "12PM", icon: "book.fill", bgColor: .green)

                    }
                }

            }.padding()

            Circle()
                .frame(width: 60, height: 60, alignment: .center)
                .overlay(Image(systemName: "plus").font(.system(size: 30)).foregroundColor(.white))

                .padding(.trailing, 10)
                .foregroundColor(.orange)
                .shadow(radius: 10)
        }
    }
}

struct TotalCardView_Previews: PreviewProvider {
    static var previews: some View {
        TotalCardView()
    }
}
