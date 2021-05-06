//
//  CustomPopUpView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/29.
//

import ExytePopupView
import SwiftUI

struct CustomPopUpView: View {
    @State var showingPopup = false
    @State var showingSolidPopup = false

    func createTopMessage() -> some View {
        Text("토스트 뷰 입니다.")
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(15)
    }

    func createSolidBottomMessage() -> some View {
        HStack {
            Image(systemName: "book.fill")
                .font(.largeTitle)

            VStack {
                Button(action: {
                    print("솔리드 토스트 뷰")
                    showingPopup = true
                }, label: {
                    Text("기본 토스트")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                })

                Divider()

                Text("안내 사항을 이렇게 적어드립니다.. ")
            }
        }
        .padding()
        .background(Color.pink)
        .foregroundColor(.white)
        .cornerRadius(15)
    }

    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    print("토스트 버튼 클릭")
                    showingPopup = true
                }, label: {
                    Text("기본 토스트")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                })

                Button(action: {
                    print("솔리드")
                    showingSolidPopup = true
                }, label: {
                    Text("솔리드 토스트")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(15)
                })
            }
        }
        .popup(isPresented: $showingPopup, type: .default, position: .bottom, animation: .default, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: { self.createTopMessage() })
        .popup(isPresented: $showingSolidPopup, type: .floater(verticalPadding: 20), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: { self.createSolidBottomMessage() })
    }
}

struct CustomPopUpView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPopUpView()
    }
}
