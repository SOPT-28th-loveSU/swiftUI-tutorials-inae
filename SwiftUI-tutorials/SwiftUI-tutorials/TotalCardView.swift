//
//  TotalCardView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/22.
//

import SwiftUI

struct TotalCardView: View {
    @State
    var isNavigationBarHidden: Bool = false

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack {
                            NavigationLink(destination: ListView(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                                Image(systemName: "line.horizontal.3")
                                    .font(.largeTitle)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                            NavigationLink(
                                destination: ProfileView(isHiddenNavigationBar: self.$isNavigationBarHidden)) {
                                    Image(systemName: "person.crop.circle.fill")
                                        .font(.largeTitle)
                            }
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
            .navigationBarTitle("뒤로가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear {
                self.isNavigationBarHidden = true
            }
//            .toolbar(content: {
//                ToolbarItem(placement: .navigationBarTrailing, content: {
//                    NavigationLink(
//                        destination: ProfileView()) {
//                            Image(systemName: "person.crop.circle.fill")
//                                .frame(width: 30, height: 30, alignment: .center)
//                                .font(.largeTitle)
//                    }
//                })
//            })
        }
    }
}

struct TotalCardView_Previews: PreviewProvider {
    static var previews: some View {
        TotalCardView()
    }
}
