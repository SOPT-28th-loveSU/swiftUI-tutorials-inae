//
//  DarkModeView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/12.
//

import SwiftUI

struct DarkModeView: View {
    @State var shouldShowAlert: Bool = false
    @Environment(\.colorScheme) var scheme

    var body: some View {
        ZStack {
            Theme.bgColor(scheme: scheme)

            VStack {
                Spacer()

                Button("Button") {
                    shouldShowAlert.toggle()
                    print("clicked Button")
                }
                .padding()
                .foregroundColor(.white)
                .background(Theme.btnColor(scheme: scheme))
                .overlay(
                    Rectangle()
                        .stroke(lineWidth: 5.0)
                        .foregroundColor(.white)
                )
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("안녕하세요"), message: Text("알림창입니다."), dismissButton: Alert.Button.cancel())
                })

                Spacer().frame(height: 100)
            }

        }.ignoresSafeArea()
    }
}

enum Theme {
    static func bgColor(scheme: ColorScheme) -> Color {
        switch scheme {
        case .light:
            return Color.yellow
        case .dark:
            return Color.black
        @unknown default:
            return Color.yellow
        }
    }

    static func btnColor(scheme: ColorScheme) -> Color {
        switch scheme {
        case .light:
            return Color.green
        case .dark:
            return Color.orange
        @unknown default:
            return Color.green
        }
    }
}

struct DarkModeView_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeView()
    }
}
