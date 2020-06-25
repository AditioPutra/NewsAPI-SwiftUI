//
//  TopHeadLine.swift
//  NewsAPI-SwiftUI
//
//  Created by Aditio Dharma Putra on 23/06/20.
//  Copyright © 2020 Aditio Dharma Putra. All rights reserved.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {    
    let author, title, description: String?
    let url: String?
    let urlToImage: String?
}

