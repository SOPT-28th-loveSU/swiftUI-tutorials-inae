//
//  MyTestView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/14.
//

import SwiftUI

struct MyTestView: View {
    @State
    private var index: Int = 0
    private let backgrounds: [Color] = [Color.red, Color.orange, Color.yellow, Color.green, Color.purple, Color.blue]
    
    @Binding
    private var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }

    var body: some View {
        VStack {
            Spacer()
            Text("새로운 배경 아이템 인덱스 \(index)")
                .font(.system(size: 35))
                .fontWeight(.bold)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight:  50)
            
            Text("활성화 상태 : \(String(isActivated))")
                .fontWeight(.bold)
                .foregroundColor(isActivated ? Color.red : Color.blue)
                .background(Color.white)
            
            Spacer()
        }
        .background(backgrounds[index])
//        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("background tap!")

            if index == backgrounds.count - 1 {
                index = 0
            } else {
                index += 1
            }
        }
    }
}
