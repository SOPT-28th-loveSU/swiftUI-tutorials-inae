//
//  MyVStackView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/14.
//

import SwiftUI

struct MyVStackView: View {
    @Binding
    private var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack {
            
            Text("1")
                .fontWeight(.bold)
                .font(.system(size: 40))

            Text("2")
                .fontWeight(.bold)
                .font(.system(size: 40))

            Text("3")
                .fontWeight(.bold)
                .font(.system(size: 40))
            
        }
        .padding(isActivated ? 10 : 0)
        .background(isActivated ? Color.green : Color.blue)
    }
}
