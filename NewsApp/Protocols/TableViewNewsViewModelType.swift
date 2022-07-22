//
//  TableViewNewsViewModelType.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 06/07/2022.
//

import Foundation

protocol TableViewNewsViewModelType {
    var news: [News] { get }
    
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewNewsCellViewModel?
    func getNews(newsCountries: String , comletion: @escaping () -> Void)
    func setTitleName(countries: NewsCountries) -> String 

}

