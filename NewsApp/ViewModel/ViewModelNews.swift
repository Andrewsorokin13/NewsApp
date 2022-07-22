//
//  PopularViewModel.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 01/07/2022.
//

import Foundation

class ViewModelNews: TableViewNewsViewModelType {
    var news: [News] = []
    
    func numberOfRows() -> Int {
        news.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewNewsCellViewModel? {
        let news = news[indexPath.row]
        return TableViewNewsCellViewModel(news: news)
    }
    
    func getNews(newsCountries: String , comletion: @escaping () -> Void) {
        NewNetworkManager.shared.fetchNewsCountries(newsCountries: newsCountries) { [unowned self] news in
            self.news = news!
            comletion()
        }
    }
    
    func setTitleName(countries: NewsCountries) -> String {
        switch countries {
        case .Germany :
            return NSLocalizedString("Top-News", comment: "Top News from Germany")
        case .France :
           return NSLocalizedString("Top des actualités", comment: "Top News from France")
        case .USA :
            return NSLocalizedString("Top News", comment: "Top News from USA")
        case .Russia :
            return NSLocalizedString("Главные новости", comment: "Top News from Russia")
        case .Ukraine :
            return NSLocalizedString("Головні новини", comment: "Top News from Ukraine")
        }
    }
    
}
