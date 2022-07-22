//
//  ViewModelTest.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 01/07/2022.
//

import Foundation

class  TableViewNewsCellViewModel: TableViewNewsCellViewModelType {
    
    var urlToImage: String? {
        news.urlToImage ?? "https://oncokaluga.ru/wp-content/themes/apexclinic/images/no-image/No-Image-Found-400x264.png"
    }
   private let news: News
    
    required init(news: News) {
        self.news = news
    }
    
    var author: String {
        return news.author  ?? "No Author"
    }
    
    var title: String {
        return news.title  ?? "No Title"
    }
    
    var description: String {
        return news.description ?? "Niasd Description "
    }
    
    var url: String {
        return news.url  ?? "No Url"
    }
    
    var publishedAt: String {
        guard let string = news.publishedAt else { return "no publishedAt" }
        return string
    }
}
