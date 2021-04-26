//
//  ProfileView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/26.
//

import SwiftUI

struct ProfileView: View {
    @Binding
    var isHiddenNavigationBar: Bool

    init(isHiddenNavigationBar: Binding<Bool> = .constant(false)) {
        _isHiddenNavigationBar = isHiddenNavigationBar
    }

    var body: some View {
        ScrollView {
            VStack(alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/, spacing: 30) {
                CircleImageView(imageName: "swiftui")

                Text("이인애")
                    .font(.system(size: 30))
                    .fontWeight(.bold)

                Text("배가 부른 상태...")
                    .fontWeight(.semibold)

                HStack(alignment: .center, spacing: 30) {
                    Button(action: {}, label: {
                        Text("밥 사줘")
                    })
                        .frame(width: 80, height: .none, alignment: .center)
                        .padding()
                        .cornerRadius(10)

                    Button(action: {}, label: {
                        NavigationLink(destination: Text("웅앵")) {
                            Text("여긴 모")
                        }
                    })
                        .frame(width: 80, height: .none, alignment: .center)
                        .padding()
                        .cornerRadius(10)
                }
            }
        }
        .navigationTitle("내 프로필")
        .navigationBarItems(trailing:
            Button(action: {}, label: {
                NavigationLink(destination: Text("웅앵")) {
                    Text("여긴 모")
                }
            })
        )
        .onAppear {
            self.isHiddenNavigationBar = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
