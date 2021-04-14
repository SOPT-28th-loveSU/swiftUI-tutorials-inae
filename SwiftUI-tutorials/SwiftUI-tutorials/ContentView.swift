//
//  ContentView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/14.
//

import SwiftUI

struct ContentView: View {
    @State
    private var isActivated: Bool = false

    /// padding을 주고 background를 적용해야 padding에도 background가 적용됨.
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.red : Color.yellow)
                .onTapGesture {
                    print("tap!")

                    withAnimation {
                        self.isActivated.toggle()
                    }
                }

                // navigation button
                NavigationLink(
                    destination: MyTestView(isActivated: $isActivated)) {
                        Text("네비게이션")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(30)
                }
                .padding(.top, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
