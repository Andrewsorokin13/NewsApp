//
//  SearchNewsViewController+SearchBar.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 21/07/2022.
//

import UIKit

extension SearchNewsTableViewController: UISearchBarDelegate {
     func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool{
        viewModel.fetchSearchNews(newsSerch: searchBar.text!) {
            self.tableView.reloadData()
        }
         return true
    }
}
