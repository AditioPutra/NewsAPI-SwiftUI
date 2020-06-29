//
//  BitcoinListView.swift
//  NewsAPI-SwiftUI
//
//  Created by Aditio Dharma Putra on 25/06/20.
//  Copyright © 2020 Aditio Dharma Putra. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct BitcoinListView: View {
    @ObservedObject var model = ArticleListViewModel()
    let articleViewModel: [ArticleViewModel]
    
    init(articleViewModel: [ArticleViewModel]) {
        self.articleViewModel = articleViewModel
    }
    
    var body: some View {
        VStack {
            if model.loading {
                ActivityIndicatorView()
            } else {
                List(self.articleViewModel) { articleViewModels in
                    HStack(spacing: 15) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text(articleViewModels.title)
                                .lineLimit(nil)
                            
                            Text(articleViewModels.description)
                                .foregroundColor(.secondary)
                                .lineLimit(nil)
                            
                        }
                        
                        WebImage(url: URL(string: articleViewModels.urlToImage)!, options: .highPriority, context: nil)
                            .resizable()
                            .indicator(.activity)
                            .frame(width: 110, height: 135)
                            .cornerRadius(20)
                        
                        
                    }
                }.padding(.vertical, 15)
            }
            
            
        }
    }
    
}

