//
//  VStackView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/22.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("텍스트도 넣어보기..")
                .fontWeight(.bold)
            
            Divider().opacity(1).foregroundColor(.red)
            
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.red)

            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.orange)
                .padding(.bottom, 30)

            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.green)
            
            Spacer()
                .frame(width: 10, height: 10)
                .foregroundColor(.black)
        }
        .background(Color.blue)
    }
}

struct VStackView_Previews: PreviewProvider {
    static var previews: some View {
        VStackView()
    }
}
