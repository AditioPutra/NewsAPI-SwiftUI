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
    let API_KEY = ""
    func getTopHeadlineNews(completion: @escaping ([Article]?) -> ()) {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(API_KEY)")  else  {
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
