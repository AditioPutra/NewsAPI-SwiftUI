//
//  TopHeadlineViewModel.swift
//  NewsAPI-SwiftUI
//
//  Created by Aditio Dharma Putra on 23/06/20.
//  Copyright © 2020 Aditio Dharma Putra. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

class ArticleListViewModel: ObservableObject {
    
    @Published var article = [ArticleViewModel]()
    
    init() {
        fetchBitcoinNews()
    }
    
    func fetchBitcoinNews() {
        Webservice().getTopHeadlineNews { article in
            if let article = article {
                self.article = article.map(ArticleViewModel.init)
            }
        }
    }
}


class ArticleViewModel: Identifiable {
    
    let id = UUID()
    
    let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    var title: String {
        return self.article.title ?? ""
    }
    
    var description: String {
        return self.article.description ?? ""
    }
    
    var author: String {
        return self.article.author ?? ""
    }
    
    var url: String {
        return self.article.url ?? ""
    }
    
    var urlToImage: String {
        return self.article.urlToImage ?? ""
    }
    
}



