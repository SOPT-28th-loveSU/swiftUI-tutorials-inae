//
//  CustomTextFieldView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/29.
//

import SwiftUI

struct CustomTextFieldView: View {
    @State
    private var inputName: String = ""
    @State
    private var inputPassword: String = ""

    var body: some View {
        VStack {
            TextField("사용자 이름", text: $inputName)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .modifier(ClearButton(text: $inputName))

            SecureField("비밀번호", text: $inputPassword)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .modifier(ClearButton(text: $inputPassword))
            
            Text("비밀번호 : \(inputPassword)")
        }
        .padding(.horizontal, 30)
    }
}

struct ClearButton: ViewModifier {
    @Binding var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .trailing) {
            content
            
            Button(action: {
                self.text = ""
            }) {
                Image(systemName: "multiply.circle.fill")
                    .foregroundColor(.secondary)
            }
            .padding()
        }
    }
}

struct CustomTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldView()
    }
}
