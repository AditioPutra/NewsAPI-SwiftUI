//
//  WebServices.swift
//  NewsAPI-SwiftUI
//
//  Created by Aditio Dharma Putra on 23/06/20.
//  Copyright © 2020 Aditio Dharma Putra. All rights reserved.
//

import Foundation

class Webservice {
    //Ned Generate API_Key
    let API_KEY = "69452e35d2374599ac4681900f4d6975"
    func getTopHeadlineNews(completion: @escaping ([Article]?) -> ()) {
        guard let url = URL(string: "http://newsapi.org/v2/everything?q=apple&from=2020-06-25&to=2020-06-25&sortBy=popularity&apiKey=\(API_KEY)")  else  {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let bitcoinNews = try? JSONDecoder().decode(NewsResponse.self, from: data)
            DispatchQueue.main.async {
                completion(bitcoinNews?.articles)
            }
        }.resume()
    }
}
