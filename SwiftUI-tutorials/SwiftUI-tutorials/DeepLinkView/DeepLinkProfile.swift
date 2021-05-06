//
//  DeepLinkProfileView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/04.
//

import SwiftUI

struct DeepLinkProfile: View {
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center) {
                Spacer()
                Rectangle()
                    .frame(width: geo.size.width / 3, height: geo.size.width / 3, alignment: .center)
                    .foregroundColor(.orange)
                    .cornerRadius(30)

                Text("프로필")
                    .fontWeight(.semibold)
                    .font(.system(.largeTitle))
                Spacer()
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct DeepLinkProfile_Previews: PreviewProvider {
    static var previews: some View {
        DeepLinkProfile()
    }
}
