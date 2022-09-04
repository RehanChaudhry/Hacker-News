//
//  WebView.swift
//  HackerNews
//
//  Created by Rehan Chaudhry on 28/08/2022.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var url: String?
  
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeUrl = url {
            
            if let url = URL(string: safeUrl) {
                
                let request = URLRequest(url: url)
                
                uiView.load(request)
            }
            
        }
        
    }
}
