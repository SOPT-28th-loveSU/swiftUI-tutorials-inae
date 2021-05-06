//
//  BasicCardView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/22.
//

import SwiftUI

struct BasicCardView: View {
    var title: String
    var start: String
    var end: String
    var icon: String
    var bgColor: Color
    
    var body: some View {
        HStack(alignment: .center, spacing: nil) {
            Image(systemName: icon)
                .foregroundColor(.white)
                .font(.system(size: 50))
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                    .fontWeight(.black)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                Text("\(start) - \(end)")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct BasicCardView_Previews: PreviewProvider {
    static var previews: some View {
        BasicCardView(title: "세상에나", start: "11PM", end: "12AM", icon: "flame.fill", bgColor: .pink)
    }
}
