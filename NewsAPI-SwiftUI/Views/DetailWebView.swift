//
//  DetailWebView.swift
//  NewsAPI-SwiftUI
//
//  Created by Aditio Dharma Putra on 29/06/20.
//  Copyright © 2020 Aditio Dharma Putra. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}
