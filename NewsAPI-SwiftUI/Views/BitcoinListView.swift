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
                    NavigationLink(destination: DetailView(url: articleViewModels.url)) {
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
                                .frame(width: 150, height: 150)
                                .cornerRadius(20)
                            
                            
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.vertical, 15)
                }
            }
        }
    }
    
}

