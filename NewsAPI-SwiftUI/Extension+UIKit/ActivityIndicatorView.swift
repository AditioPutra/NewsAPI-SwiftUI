//
//  ActivityIndicatorView.swift
//  NewsAPI-SwiftUI
//
//  Created by Aditio Dharma Putra on 29/06/20.
//  Copyright © 2020 Aditio Dharma Putra. All rights reserved.
//

import UIKit
import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: .large)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.hidesWhenStopped = true
        uiView.startAnimating()
    }
    
}
