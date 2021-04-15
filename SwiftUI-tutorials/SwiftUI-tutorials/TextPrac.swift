//
//  TextPrac.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/15.
//

import SwiftUI

struct TextPrac: View {
    var body: some View {
        VStack {
            Text("When writing SwiftUI code, Canvas provides a live preview of the UI you’re building. Apples has gone to great lengths to make this a two-way experience, i.e. any changes you make in the preview (e.g. by moving UI elements, or adding new ones) will be reflected in the code editor as well, and vice versa. This allows for rapid prototyping with fast turn-around times. You no longer need to launch your application to check if the button looks better in red or in blue.")
                .tracking(2)
                .font(.system(.body, design: .serif))
                .multilineTextAlignment(.center)
                .lineSpacing(5)
                .lineLimit(100)
                .truncationMode(.tail)
                .shadow(color: Color.black ,radius: 1.5, x: -8, y: 5)
            
                .padding(10)
                .background(Color.red)
                .foregroundColor(Color.white)
                
                .padding()
                .background(Color.white)
                .cornerRadius(20)
            
                .padding()
                .background(Color.green)
            
            Text("네옹...")
            
            Text("졸리네옹..")
        }
    }
}

struct TextPrac_Previews: PreviewProvider {
    static var previews: some View {
        TextPrac()
    }
}
