//
//  SearchViewModel.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 03/07/2022.
//

import Foundation

class SearchViewModel: TableViewSearchViewModelType {
    var news: [News] = []
    
    func numberOfRows() -> Int {
        news.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewNewsCellViewModel? {
        let news = news[indexPath.row]
        return TableViewNewsCellViewModel(news: news)
    }
    
    func fetchSearchNews(newsSerch: String? = nil, copmletion: @escaping () -> Void) {
        guard let newsSerch = newsSerch else { return }
        NewNetworkManager.shared.fetchSearchNews(newsSerch: newsSerch) { [weak self] news in
            guard let news = news else { return }
            self?.news = news
            copmletion()
        }
    }
}
