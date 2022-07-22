//
//  NewsTableView+SafariVC.swift
//  NewsApp
//

import SafariServices

extension NewsTableViewController {
    
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
