//
//  CustomMenuView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/04.
//

import SwiftUI

let myPets = ["멍", "냥", "짹"]

struct CustomMenuView: View {
    @State private var shouldShowAlert: Bool = false
    @State private var myText: String = ""
    @State private var selectedIdx = 0

    var body: some View {
        NavigationView {
            Text("\(myPets[selectedIdx])")
                .navigationTitle("안녕하세요")
                .toolbar(content: {
                    ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                        Menu(content: {
                            Section {
                                Button(action: {
                                    shouldShowAlert = true
                                    myText = "창문 닫아욥"
                                }, label: {
                                    Label(
                                        title: { Text("비가 온다아") },
                                        icon: { Image(systemName: "cloud.rain.fill") }
                                    )
                                })

                                Button(action: {
                                    shouldShowAlert = true
                                    myText = "빨래 하지마세요"
                                }, label: {
                                    Label(
                                        title: { Text("습해요") },
                                        icon: { Image(systemName: "aqi.medium") }
                                    )
                                })
                            }

                            Section {
                                Button(action: {}, label: {
                                    Label(
                                        title: { Text("새 파일 만들기") },
                                        icon: { Image(systemName: "doc") }
                                    )
                                })

                                Button(action: {}, label: {
                                    Label(
                                        title: { Text("새 폴더 만들기") },
                                        icon: { Image(systemName: "folder") }
                                    )
                                })
                            }

                            Section {
                                Button(action: {}, label: {
                                    Label(
                                        title: { Text("파일 모두 삭제") },
                                        icon: { Image(systemName: "trash") }
                                    )
                                })
                            }

                            Picker(selection: $selectedIdx, label: Text("반려 동물 선택")) {
                                ForEach(myPets.indices, id: \.self, content: { idx in
                                    Text("\(myPets[idx])")
                                })
                            }
                        }) {
                            Circle()
                                .frame(width: 60, height: 60, alignment: .center)
                                .foregroundColor(Color.pink)
                                .overlay(
                                    Image(systemName: "ellipsis").foregroundColor(.white)).font(.largeTitle)
                        }
                    }
                })
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("\(myText)"))
                })
        }
    }
}

struct CustomMenuView_Preview: PreviewProvider {
    static var previews: some View {
        CustomMenuView()
    }
}
