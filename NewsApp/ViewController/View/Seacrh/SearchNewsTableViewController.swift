//
//  SearchTableViewController.swift
//  NewsApp
//
//

import UIKit


class SearchNewsTableViewController: UITableViewController {
     var viewModel: TableViewSearchViewModelType!{
        didSet {
            viewModel.fetchSearchNews(newsSerch: nil) {
                self.tableView.reloadData()
            }
        }
    }
    
     let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSearchBar()
        tableVIewSetings()
        viewModel = SearchViewModel()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if  viewModel.news.count > 0 {
            tableView.backgroundView = nil
            return viewModel.news.count
        } else {
            let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: self.tableView.bounds.size.width, height: self.tableView.bounds.size.height))
            TableViewIsEmptyRow.showMessageEmptyRow(message: NSLocalizedString(" 🔍 Use the search bar at the top to search for news",
                                                                    comment: "Used search bar"),
                                    viewController: self,
                                    react: rect)
            return 0
        }
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.TableViewCellID.cellReuseIdentifier, for: indexPath) as! TableViewCell
        cell.viewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        return cell
    }
   
    // MARK: - Navigation
    
    private func tableVIewSetings(){
        tableView.register(UINib(nibName: Constants.TableViewCellID.nibNameTabeleCell , bundle: nil),forCellReuseIdentifier: Constants.TableViewCellID.cellReuseIdentifier)
        self.tableView.rowHeight =  340
    }
    
    private func updateSearchBar(){
        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
        navigationController?.navigationBar.prefersLargeTitles = true
        searchController.obscuresBackgroundDuringPresentation = false
    }
}
