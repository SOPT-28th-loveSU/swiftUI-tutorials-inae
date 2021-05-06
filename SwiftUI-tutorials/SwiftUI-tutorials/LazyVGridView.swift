//
//  LazyVGridView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/06.
//

import SwiftUI

struct MyModel: Identifiable {
    let id = UUID()
    let title: String
    let content: String

    static var dummyDataArray: [MyModel] {
        (1 ... 2000).map { (number: Int) in
            MyModel(title: "타이틀 \(number)", content: "컨텐트 \(number)")
        }
    }
}

struct LazyVGridView: View {
    var dummyDataArray = MyModel.dummyDataArray

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.fixed(50)), GridItem(.adaptive(minimum: 30)),
                                GridItem(.flexible(minimum: 100))], content: {
                    ForEach(dummyDataArray, content: {
                        (data: MyModel) in

                        Rectangle().foregroundColor(.orange)
                            .frame(height: 120)
                            .overlay(Text("\(data.title)"))
                    })

                })
        }
    }
}

struct LazyVGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridView()
    }
}
