//
//  ModifierView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/12.
//

import Foundation
import SwiftUI

struct ModifierView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello World~")
                .myRoundedViewStyle()

            Text("다른 거")
                .myRoundedViewStyle()
        }
    }
}

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(25)
            .padding()
            .font(.largeTitle)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 5)
                    .foregroundColor(Color.purple)
            )
    }
}

extension View {
    func myRoundedViewStyle() -> some View {
        modifier(ButtonModifier())
    }
}

struct ModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierView()
    }
}
