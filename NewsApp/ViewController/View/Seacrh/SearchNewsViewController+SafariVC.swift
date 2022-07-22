//
//  SearchNewsViewController+SafariVC.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 21/07/2022.
//

import Foundation
import SafariServices

extension SearchNewsTableViewController {

    // MARK: - Navigation
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newsURL = viewModel.news[indexPath.row].url
        guard let url = newsURL else { return  }
        guard let urlNews = URL(string: url) else { return }
        let safaryConfig = SFSafariViewController.Configuration()
        let safaryVC = SFSafariViewController(url: urlNews, configuration: safaryConfig)
        safaryVC.modalPresentationStyle = .fullScreen
        present(safaryVC, animated: true)
    }
}
