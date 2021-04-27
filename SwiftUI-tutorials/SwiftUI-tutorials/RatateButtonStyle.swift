//
//  CustomButtonStyle.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/27.
//

import SwiftUI

struct RotateButtonStyle: ButtonStyle {
    var color: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(.largeTitle))
            .padding(20)
            .background(color)
            .cornerRadius(15)
            .foregroundColor(.white)
            .rotationEffect(configuration.isPressed ? .degrees(80) : .degrees(0), anchor: .bottomLeading)
    }
}

struct RotateButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("tap")
        }, label: {
            Text("Button")
        })
            .buttonStyle(RotateButtonStyle(color: .pink))
    }
}
