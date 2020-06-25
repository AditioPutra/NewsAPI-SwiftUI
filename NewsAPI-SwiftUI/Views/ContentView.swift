//
//  ContentView.swift
//  NewsAPI-SwiftUI
//
//  Created by Aditio Dharma Putra on 23/06/20.
//  Copyright © 2020 Aditio Dharma Putra. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @ObservedObject var model = ArticleListViewModel()
    
    var body: some View {
        
        NavigationView {
            BitcoinListView(articleViewModel: model.article)
                .navigationBarTitle("News Feed")
        }
        
    }
}


