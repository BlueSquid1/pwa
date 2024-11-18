//
//  ContentView.swift
//  pwa
//
//  Created by Clinton Page on 15/11/2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()

        // Load the local HTML file from the "www" folder
        if let localURL = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "www") {
            webView.loadFileURL(localURL, allowingReadAccessTo: localURL.deletingLastPathComponent())
        } else {
            print("Failed to load index.html from www folder.")
        }
        
        // Optional: Set up web view configuration for a PWA-like experience (e.g., enabling JavaScript)
        webView.configuration.preferences.javaScriptEnabled = true

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // No dynamic updates needed in this case
    }
}

struct ContentView: View {
    var body: some View {
        WebView().edgesIgnoringSafeArea(.all) // Makes the web view full-screen
    }
}

#Preview {
    ContentView()
}
