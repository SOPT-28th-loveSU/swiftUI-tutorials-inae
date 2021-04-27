//
//  CustomButtonView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/27.
//

import SwiftUI

struct CustomButtonView: View {
    let hapticGesture = UINotificationFeedbackGenerator()

    var body: some View {
        VStack(spacing: 20) {
            /// 1번 버튼
            Button(action: {}, label: {
                Text("탭")
            })
                .buttonStyle(CustomButtonStyle(color: .blue))

            /// 2번 버튼
            Button(action: {
                print("2번")
                self.hapticGesture.notificationOccurred(.success)
            }, label: {
                Text("롱클릭")
            })
                .buttonStyle(CustomButtonStyle(color: .green))

            /// 3번 버튼
            Button(action: {
                print("3번")
            }, label: {
                Text("축소 버튼")
            })
                .buttonStyle(CustomButtonStyle(color: .purple, scale: 0.7))

            /// 4번 버튼
            Button(action: {
                print("4번")
            }, label: {
                Text("회전 버튼")
            })
                .buttonStyle(RotateButtonStyle(color: .pink))

            /// 5번 버튼
            Button(action: {
                print("5번")
            }, label: {
                Text("블러 버튼")
            })
                .buttonStyle(CustomButtonStyle(color: .black, blur: true))
        }
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
    }
}
