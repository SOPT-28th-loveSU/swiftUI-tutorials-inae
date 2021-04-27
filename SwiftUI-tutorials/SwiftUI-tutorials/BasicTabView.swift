//
//  TapView .swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/27.
//

import SwiftUI

struct BasicTabView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("1번 탭")
                }
                .tag(1)

            Text("2번")
                .font(.largeTitle)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("2번 탭")
                }
                .tag(2)

            Text("3번")
                .font(.largeTitle)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("3번 탭")
                }
                .tag(3)
        }
        .accentColor(Color.red)
    }
}

struct TapView_Previews: PreviewProvider {
    static var previews: some View {
        BasicTabView()
    }
}
