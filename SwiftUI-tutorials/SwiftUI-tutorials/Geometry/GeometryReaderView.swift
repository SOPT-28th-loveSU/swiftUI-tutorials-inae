//
//  GeometryReader.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/27.
//

import SwiftUI

enum idx {
    case one
    case two
    case three
}

struct GeometryReaderView: View {
    @State var tapIdx: idx = .one

    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center, spacing: nil) {
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 50, height: geo.size.height / 3)
                    .padding(.horizontal, self.tapIdx == .one ? 100 : 50)
                    .background(Color.red)
                    .onTapGesture {
                        withAnimation {
                            self.tapIdx = .one
                        }
                    }

                Text("2")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 50, height: geo.size.height / 3)
                    .padding(.horizontal, self.tapIdx == .two ? 100 : 50)
                    .background(Color.orange)
                    .onTapGesture {
                        withAnimation {
                            self.tapIdx = .two
                        }
                    }

                Text("3")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 50, height: geo.size.height / 3)
                    .padding(.horizontal, self.tapIdx == .three ? 100 : 50).background(Color.purple)
                    .onTapGesture {
                        withAnimation {
                            self.tapIdx = .three
                        }
                    }
            }
            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
