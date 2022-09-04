//
//  DetailView.swift
//  HackerNews
//
//  Created by Rehan Chaudhry on 28/08/2022.
//

import SwiftUI
import WebKit

struct DetailView: View {
    var url: String?
    var body: some View {
        WebView(url: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}


