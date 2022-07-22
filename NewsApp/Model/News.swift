//
//  News.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 01/07/2022.
//

import Foundation

struct NewsApiResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [News]
}

struct News: Codable {
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}

