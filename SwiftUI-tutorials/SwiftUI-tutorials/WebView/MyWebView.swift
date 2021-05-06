//
//  MyWebView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/04/15.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: urlToLoad) else {
            return WKWebView()
        }
        
        let webview = WKWebView()
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {}
}
