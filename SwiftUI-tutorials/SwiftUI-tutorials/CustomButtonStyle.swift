//
//  CustomButtonStyle.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/27.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    var color: Color
    var scale: CGFloat = 1.5
    var blur: Bool = false

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(.largeTitle))
            .padding(20)
            .background(color)
            .cornerRadius(15)
            .foregroundColor(.white)
            .scaleEffect(configuration.isPressed ? scale : 1.0)
            .blur(radius: self.blur && configuration.isPressed ? 15 : 0)
    }
}

struct CustomButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("tap")
        }, label: {
            Text("Button")
        })
            .buttonStyle(CustomButtonStyle(color: .pink))
    }
}
