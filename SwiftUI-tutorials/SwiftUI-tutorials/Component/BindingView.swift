//
//  BindingView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/15.
//

import SwiftUI

struct BindingView: View {
    @State
    private var showAddView = false

    var body: some View {
        VStack {
            Text("Hello World")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.green)

            Button("Click") {
                showAddView = true
            }
            .padding(30)
            .background(Color(.red))
            .sheet(isPresented: $showAddView, content: {
                AddView(isPresented: $showAddView)
            })
        }
    }
}

struct AddView: View {
    @Binding
    var isPresented: Bool

    var body: some View {
        Button("Dissmiss") {
            self.isPresented = false
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
