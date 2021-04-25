//
//  ListView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/25.
//

import SwiftUI

struct ListView: View {
    @Binding
    var isNavigationBarHidden: Bool

    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *) {
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }

        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().separatorColor = .clear
        
        _isNavigationBarHidden = isNavigationBarHidden
    }

    var body: some View {
        List {
            Section(header: Text("오늘").font(.headline).foregroundColor(.black), footer: Text("footer")) {
                ForEach(1 ... 3, id: \.self) {
                    BasicCardView(title: "집가기 \($0)", start: "16PM", end: "20PM", icon: "book.fill", bgColor: .secondary)
                }
            }

            Section(header: Text("내일").font(.headline).foregroundColor(.black)) {
                ForEach(1 ... 20, id: \.self) {
                    BasicCardView(title: "집가기 \($0)", start: "16PM", end: "20PM", icon: "book.fill", bgColor: .green)
                }
            }
            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
        }
        .listRowInsets(.none)
        .listStyle(GroupedListStyle())
        .navigationTitle("내 목록")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
