//
//  DeepLinkView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/04.
//

import SwiftUI

enum TabIdentifier {
    case todo
    case profile
}

enum PageIdentifier {
    case todoItem(id: UUID)
}

struct DeepLinkView: View {
    @State var selectedTag = TabIdentifier.todo

    var body: some View {
        TabView(selection: $selectedTag) {
            DeepLinkTodo()
                .tabItem {
                    Image(systemName: "text.badge.plus")
                    Text("todo")
                }.tag(TabIdentifier.todo)

            DeepLinkProfile()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile")
                }
                .tag(TabIdentifier.profile)
        }
        .onOpenURL(perform: { url in
            guard let tabId = url.tabIdentifier else { return }
            selectedTag = tabId
        })
    }
}

struct DeepLinkView_Previews: PreviewProvider {
    static var previews: some View {
        DeepLinkView()
    }
}

extension URL {
    var isDeepLink: Bool {
        scheme == "deeplink-su"
    }

    var tabIdentifier: TabIdentifier? {
        guard isDeepLink else { return nil }

        switch host {
        case "todo":
            return TabIdentifier.todo
        case "profile":
            return TabIdentifier.profile
        default:
            return TabIdentifier.todo
        }
    }

    var detailPage: PageIdentifier? {
        guard let tabId = tabIdentifier, pathComponents.count > 1,
              let uuid = UUID(uuidString: pathComponents[1]) else { return nil }

        switch tabId {
        case .todo:
            return .todoItem(id: uuid)
        case .profile:
            return nil
        }
    }
}
