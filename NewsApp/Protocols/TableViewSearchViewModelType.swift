//
//  TableViewSearchViewModelType.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 09/07/2022.
//

import Foundation

// Либо можно использовать TableViewNewsViewModelType и добавить пару методов
protocol TableViewSearchViewModelType {
    var news: [News] { get }
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewNewsCellViewModel?
    func fetchSearchNews (newsSerch: String?, copmletion: @escaping () -> Void)

}
