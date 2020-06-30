//
//  ActivityIndicatorView.swift
//  NewsAPI-SwiftUI
//
//  Created by Aditio Dharma Putra on 29/06/20.
//  Copyright © 2020 Aditio Dharma Putra. All rights reserved.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
}
