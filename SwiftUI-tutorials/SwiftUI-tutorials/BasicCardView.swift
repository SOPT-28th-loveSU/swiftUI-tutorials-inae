//
//  BasicCardView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/22.
//

import SwiftUI

struct BasicCardView: View {
    var body: some View {
        HStack(alignment: .center, spacing: nil) {
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 50))
            VStack(alignment: .leading, spacing: 10) {
                Text("카드뷰 따라할건디")
                    .fontWeight(.black)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                Text("10:00 AM - 11:00 AM")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct BasicCardView_Previews: PreviewProvider {
    static var previews: some View {
        BasicCardView()
    }
}
