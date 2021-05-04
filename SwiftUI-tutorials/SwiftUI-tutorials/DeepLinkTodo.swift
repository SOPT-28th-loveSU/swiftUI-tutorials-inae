//
//  DeepLinkTodo.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/04.
//

import SwiftUI

struct TodoItem: Identifiable, Hashable {
    var id = UUID()
    var title: String
}

struct DeepLinkTodo: View {
    @State var todos = [TodoItem]()
    @State var activeUUID: UUID?

    init() {
        var newList = [TodoItem]()
        for i in 1 ... 30 {
            newList.append(TodoItem(title: "\(i)번째 todo"))
        }

        _todos = State(initialValue: newList)
        print(todos)
    }

    var body: some View {
        NavigationView {
            List(todos) { item in
                NavigationLink(
                    destination: Text("\(item.title)"),
                    tag: item.id,
                    selection: $activeUUID,
                    label: { Text("\(item.title)") })
            }
            .navigationBarTitle("할 일 목록", displayMode: NavigationBarItem.TitleDisplayMode.large)
            .onOpenURL(perform: { url in
                if case .todoItem(let id) = url.detailPage {
                    print("$$$$$$", id)
                    activeUUID = id
                }
            })
        }
    }
}

struct DeepLinkTodo_Previews: PreviewProvider {
    static var previews: some View {
        DeepLinkTodo()
    }
}
