//
//  ContentView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("안녕하세요.. 우왕")
            .fontWeight(.bold)
            .font(.largeTitle)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
