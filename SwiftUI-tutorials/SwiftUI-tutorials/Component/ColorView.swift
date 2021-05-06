//
//  ColorView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/27.
//

import SwiftUI

struct ColorView: View {
    var title: String
    var bgColor: Color

    var body: some View {
        ZStack {
            bgColor
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
//        .edgesIgnoringSafeArea(.all)
        .animation(.none)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(title: "view", bgColor: Color.pink)
    }
}
