//
//  CardView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/07.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var sharedUser: SharedUser

    var body: some View {
        VStack(alignment: .leading) {
            Text("이름 : \(sharedUser.name)")
            Text("나이: \(sharedUser.age)")
        }
        .padding(.horizontal, 30)
        .font(.system(size: 15))
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100, alignment: .leading)
        .background(Color.orange)
        .foregroundColor(.white)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let sd = SharedUser()
        CardView().environmentObject(sd)
    }
}
