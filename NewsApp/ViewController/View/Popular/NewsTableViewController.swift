//
//  PopularTableViewController.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 30/06/2022.
//

import UIKit


class NewsTableViewController: UITableViewController {
    @IBOutlet weak var barItem: UIBarButtonItem!
    
      var viewModel: TableViewNewsViewModelType!{
        didSet {
            viewModel.getNews(newsCountries: NewsCountries.USA.rawValue) {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVIewSetings()
        viewModel = ViewModelNews()
        setupMenu()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    // Добавить проверку на отсутвия данных и ячек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.TableViewCellID.cellReuseIdentifier,
                                                        for: indexPath) as! TableViewCell
        
        cell.viewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        return cell
    }
    
    // MARK: - tableVIew Setings
    
    private func tableVIewSetings(){
        tableView.register(UINib(nibName: Constants.TableViewCellID.nibNameTabeleCell , bundle: nil),
                           forCellReuseIdentifier: Constants.TableViewCellID.cellReuseIdentifier )
        self.tableView.rowHeight =  300
    }
}
