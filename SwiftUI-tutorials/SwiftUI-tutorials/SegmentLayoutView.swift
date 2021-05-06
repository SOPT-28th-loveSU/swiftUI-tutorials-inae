//
//  SegmentLayoutView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/06.
//

import SwiftUI

enum LayoutType: CaseIterable {
    case table, grid, multiple
}

extension LayoutType {
    var columns: [GridItem] {
        switch self {
        case .table:
            return [
                GridItem(.flexible())
            ]
        case .grid:
            return [GridItem(.flexible()), GridItem(.flexible())]
        case .multiple:
            return [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        }
    }
}

struct SegmentLayoutView: View {
    var dummyDatas = MyModel.dummyDataArray

    @State var selectedLayoutType: LayoutType = .table

    var body: some View {
        VStack {
            Picker(selection: $selectedLayoutType, label: Text("레이아웃"), content: {
                ForEach(LayoutType.allCases, id: \.self, content: {
                    layout in
                    switch layout {
                    case .table:
                        Image(systemName: "list.dash")
                    case .grid:
                        Image(systemName: "square.grid.2x2.fill")
                    case .multiple:
                        Image(systemName: "circle.grid.3x3.fill")
                    }
                })
            }).pickerStyle(SegmentedPickerStyle())

            ScrollView(.horizontal) {
                LazyHGrid(rows: selectedLayoutType.columns, content: {
                    ForEach(dummyDatas) {
                        _ in
                        switch selectedLayoutType {
                        case .table:
                            Rectangle()
                                .foregroundColor(.pink)
                                .frame(width: 100)

                        case .grid:
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(.yellow)
                                .frame(width: 200)
                                .overlay(Circle().foregroundColor(.orange).padding())

                        case .multiple:
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 100)
                        }
                    }
                })
                    .animation(.easeInOut)
                    .padding(.vertical, 30)
            }
        }
    }
}

struct SegmentLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentLayoutView()
    }
}
