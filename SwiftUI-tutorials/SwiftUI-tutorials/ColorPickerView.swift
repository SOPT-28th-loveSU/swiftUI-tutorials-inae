//
//  ColorPickerView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/04.
//

import SwiftUI

struct ColorPickerView: View {
    @State
    private var selectedIdx = 0
    
    let colorArr: [Color] = [Color.yellow, Color.red, Color.purple]
    
    var body: some View {
        VStack(spacing: 50) {
            Circle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                .foregroundColor(colorArr[selectedIdx])
                
            Text("선택된 값 : \(selectedIdx)")
            Text("선택된 색 : \(colorArr[selectedIdx].description)")
            
            Picker("과일", selection: $selectedIdx) {
                Text("바나나").tag(0)
                Text("사과").tag(1)
                Text("포도").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
            
            Picker("과일", selection: $selectedIdx) {
                Text("바나나").tag(0)
                Text("사과").tag(1)
                Text("포도").tag(2)
            }
            .frame(width: 100, height: 150, alignment: .center)
            .border(colorArr[selectedIdx], width: 5)
            .clipped()
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
