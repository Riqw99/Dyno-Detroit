//
//  WebView.swift
//  Dyno
//
//  Created by Tariq Williams on 5/10/22.
//

import Foundation
import WebKit
import SwiftUI

struct SwiftUIWebView: UIViewRepresentable {
    
    let url: URL?
    
    
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
         
        return WKWebView(
            frame: .zero,
            configuration: config)
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let myURL = url else {
            return
        }
        let request = URLRequest(url: myURL)
        uiView.load(request)
    }
}

