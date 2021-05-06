//
//  WebView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/15.
//

import SwiftUI

struct WebView: View {
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://naver.com").edgesIgnoringSafeArea(.all),
                    label: {
                        Text("Naver")
                    })
                
                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://daum.net"),
                    label: {
                        Text("Daum")
                    })

                NavigationLink(
                    destination: MyWebView(urlToLoad: "https://google.com"),
                    label: {
                        Text("Google")
                    })

            }
        }
    }
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
