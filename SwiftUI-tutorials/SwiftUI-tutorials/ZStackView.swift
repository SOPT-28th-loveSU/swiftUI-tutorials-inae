//
//  ZStackView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/22.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.red)
                .zIndex(1.0)

            Circle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.yellow)
                .zIndex(0.9)

            Circle()
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)
                .zIndex(0.8)
        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
