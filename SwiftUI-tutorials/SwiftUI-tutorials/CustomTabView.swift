//
//  CustomTabView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/27.
//

import SwiftUI

enum tabBarStatus {
    case home, cart, profile
}

struct CustomTabView: View {
    @State
    var tabIdx = tabBarStatus.home

    let scale: CGFloat = 1.5

    func changeView(tabIdx: tabBarStatus) -> ColorView {
        let color = getIdxColor(tabIdx: tabIdx)

        switch tabIdx {
        case .home:
            return ColorView(title: "home", bgColor: color)
        case .cart:
            return ColorView(title: "cart", bgColor: color)
        case .profile:
            return ColorView(title: "profile", bgColor: color)
        }
    }

    func getIdxColor(tabIdx: tabBarStatus) -> Color {
        switch tabIdx {
        case .home:
            return .red
        case .cart:
            return .orange
        case .profile:
            return .purple
        }
    }

    func getCirclePosition(tabIdx: tabBarStatus, geometry: GeometryProxy) -> CGFloat {
        switch tabIdx {
        case .home:
            return -geometry.size.width / 3
        case .cart:
            return 0
        case .profile:
            return geometry.size.width / 3
        }
    }

    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                self.changeView(tabIdx: tabIdx)

                Circle()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .offset(x: getCirclePosition(tabIdx: tabIdx, geometry: geo), y: 20)

                HStack(spacing: 0) {
                    Button(action: {
                        print("home tab")
                        withAnimation {
                            self.tabIdx = .home
                        }
                    }) {
                        Image(systemName: "house.fill")
                            .scaleEffect(self.tabIdx == .home ? self.scale : 1.0)
                            .font(.system(size: 25))
                            .frame(width: geo.size.width / 3, height: 50, alignment: .center)
                            .offset(y: self.tabIdx == .home ? -10 : 0)
                            .foregroundColor(self.tabIdx == tabBarStatus.home ? getIdxColor(tabIdx: tabIdx) : Color.gray)
                            .background(Color.white)
                    }

                    Button(action: {
                        print("cart tab")
                        withAnimation {
                            self.tabIdx = .cart
                        }
                    }) {
                        Image(systemName: "cart.fill")
                            .scaleEffect(self.tabIdx == .cart ? self.scale : 1.0)
                            .font(.system(size: 25))
                            .frame(width: geo.size.width / 3, height: 50, alignment: .center)
                            .foregroundColor(self.tabIdx == tabBarStatus.cart ? getIdxColor(tabIdx: tabIdx) : Color.gray)
                            .offset(y: self.tabIdx == .cart ? -10 : 0)
                            .background(Color.white)
                    }

                    Button(action: {
                        print("profile tab")
                        withAnimation {
                            self.tabIdx = .profile
                        }
                    }) {
                        Image(systemName: "person.fill")
                            .scaleEffect(self.tabIdx == .profile ? self.scale : 1.0)
                            .font(.system(size: 25))
                            .frame(width: geo.size.width / 3, height: 50, alignment: .center)
                            .offset(y: self.tabIdx == .profile ? -10 : 0)
                            .foregroundColor(self.tabIdx == tabBarStatus.profile ? getIdxColor(tabIdx: tabIdx) : Color.gray)
                            .background(Color.white)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
