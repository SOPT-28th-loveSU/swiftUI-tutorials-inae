//
//  MyVStackView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/14.
//

import SwiftUI

struct MyVStackView: View {
    var body: some View {
        VStack {
            
            Text("1")
                .fontWeight(.bold)
                .font(.system(size: 40))

            Text("2")
                .fontWeight(.bold)
                .font(.system(size: 40))

            Text("3")
                .fontWeight(.bold)
                .font(.system(size: 40))
            
        }
        .background(Color.blue)
    }
}
