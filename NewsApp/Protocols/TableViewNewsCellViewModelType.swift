//
//  TableViewNewsCellViewModelType.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 06/07/2022.
//

import Foundation

protocol TableViewNewsCellViewModelType {
    var author: String { get }
    var title: String { get }
    var description: String { get }
    var url: String { get }
    var urlToImage: String? { get }
    var publishedAt: String { get }
    
    init(news: News)
    
}

