//
//  NewsTableView+BarButton.swift
//  NewsApp
//

import UIKit

extension NewsTableViewController {
    // MARK: - setup Menu
      func setupMenu() {
        let france = UIAction(title: "\(NewsCountries.France)") {  [weak self] _ in
            self?.navigationItem.title = self?.viewModel.setTitleName(countries: .France)
            self?.viewModel.getNews(newsCountries: NewsCountries.France.rawValue) {
                self?.tableView.reloadData()
            }
        }
        let germany = UIAction(title: "\(NewsCountries.Germany)") { [weak self]  _ in
            self?.navigationItem.title = self?.viewModel.setTitleName(countries: .Germany)
            self?.viewModel.getNews(newsCountries: NewsCountries.Germany.rawValue) {
                self?.tableView.reloadData()
            }
        }
        let russia = UIAction(title: "\(NewsCountries.Russia)"){ [weak self] _ in
            self?.navigationItem.title = self?.viewModel.setTitleName(countries: .Russia)
            self?.viewModel.getNews(newsCountries: NewsCountries.Russia.rawValue) {
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            }
        }

        let ukraine = UIAction(title: "\(NewsCountries.Ukraine)") {  [weak self] _ in
            self?.navigationItem.title = self?.viewModel.setTitleName(countries: .Ukraine)
            self?.viewModel.getNews(newsCountries: NewsCountries.Ukraine.rawValue) {
                    self?.tableView.reloadData()
            }
        }

        let usa = UIAction(title: "\(NewsCountries.USA)") { [weak self] _ in
            self?.navigationItem.title = self?.viewModel.setTitleName(countries: .USA)
            self?.viewModel.getNews(newsCountries: NewsCountries.USA.rawValue) {
                self?.tableView.reloadData()
            }
        }

        let menu = UIMenu(title: "Select Country", children: [france, germany, russia, ukraine, usa])
        barItem.menu = menu
    }
}
