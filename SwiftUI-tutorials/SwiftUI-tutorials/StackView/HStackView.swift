//
//  HStackView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/22.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 80))

            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)

            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)
        }
        .padding(15)
        .background(Color.black)
        
    }
}

struct HStackView_Previews: PreviewProvider {
    static var previews: some View {
        HStackView()
    }
}
