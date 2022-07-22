//
//  NetworkManager.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 01/07/2022.
//

import Foundation

class NewNetworkManager {
    static let shared = NewNetworkManager()
    
    private init() {}
    
    func fetchNewsCountries(newsCountries: String ,  copmletion: @escaping ([News]?) -> Void ){
         let urlStirng = "https://newsapi.org/v2/\(ApiType.topHeadlines.rawValue)?country=\(newsCountries)&apiKey=\(ApiKey.key)"
        guard let url = URL(string: urlStirng) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil, let data = data  else{
                copmletion(nil)
                return
            }
            do {
                let decoder = JSONDecoder()
                let news = try decoder.decode(NewsApiResponse.self, from: data)
                    DispatchQueue.main.async {
                    copmletion(news.articles)
                    }
            } catch let error {
                print("Error sealiz jons", error)
            }
        }.resume()
    }
    
    func fetchSearchNews (newsSerch: String, copmletion: @escaping ([News]?) -> Void) {
        let urlStirng = "https://newsapi.org/v2/\(ApiType.everything.rawValue)?q=\(newsSerch)&apiKey=\(ApiKey.key)"
        guard let url = URL(string: urlStirng) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil, let data = data  else{
                copmletion(nil)
                return
            }
            do {
                let decoder = JSONDecoder()
                let news = try decoder.decode(NewsApiResponse.self, from: data)
                    DispatchQueue.main.async {
                    copmletion(news.articles)
                    }
            } catch let error {
                print("Error sealiz jons", error)
            }
        }.resume()
    }
}
