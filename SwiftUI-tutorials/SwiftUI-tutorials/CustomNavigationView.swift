//
//  NavigationView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/26.
//

import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        NavigationView {
            ListView()
                .navigationBarTitle("안녕하세요 :)")
                .navigationBarItems(leading:
                    Button(action: {
                        print("leading button 꾹")
                    }, label: {
                        Text("leading")
                    }),
                    trailing:
                    NavigationLink(destination:
                        Text("새로운 네비")) {
                        Image(systemName: "gear")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                    })
        }
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomNavigationView()
        }
    }
}
