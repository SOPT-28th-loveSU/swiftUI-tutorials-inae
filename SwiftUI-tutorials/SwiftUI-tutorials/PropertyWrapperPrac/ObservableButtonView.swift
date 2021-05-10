//
//  ObserverableButtonView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/07.
//

import Combine
import SwiftUI

enum TextCase: String {
    case universe = "Universe"
    case world = "World"
}

class Mydata: ObservableObject {
    @Published var name = TextCase.universe
    @Published var buttonTitle = "Switch to Universe"

    func switchName() {
        switch name {
        case .universe:
            name = .world
            buttonTitle = "Switch to world"
        case .world:
            name = .universe
            buttonTitle = "Switch to universe"
        }
    }
}

struct ObservableButtonView: View {
    @ObservedObject var data = Mydata()

    var body: some View {
        VStack {
            Text("Hello, \(data.name.rawValue)")
                .fontWeight(.heavy)
                .font(.system(size: 30))
                .padding(.vertical, 20)

            Button(data.buttonTitle, action: {
                print("꾹")
                data.switchName()
            })
            .padding(10)
            .background(Color.orange)
            .font(.system(size: 18))
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

struct ObservableButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableButtonView()
    }
}
