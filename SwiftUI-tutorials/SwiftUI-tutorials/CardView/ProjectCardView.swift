//
//  ProjectCardView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/22.
//

import SwiftUI

struct ProjectCardView: View {
    @State
    var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("카드뷰 따라할건디")
                .fontWeight(.black)
                .font(.system(size: 24))
            Text("10:00 AM - 11:00 AM")
                .font(.system(size: 15))
                .padding(.bottom, 8)
                .foregroundColor(.secondary)

            HStack {
                Circle().frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.gray)
                Circle().frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.gray)
                Circle().frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.gray)
                Spacer()
                Button("확인", action: {
                    print("버튼 누르기")
                    shouldShowAlert = true
                })
                    .frame(width: 60, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
                    .padding(15)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알람창입니다"))
                })
            }
        }
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct ProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardView()
    }
}
