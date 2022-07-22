//
//  TableViewIsEmptyRow.swift
//  NewsApp
//b
//

import UIKit

class TableViewIsEmptyRow {
     class func showMessageEmptyRow(message:String, viewController:UITableViewController, react: CGRect) {
        let lable = UILabel(frame: react)
        lable.text = message
        lable.numberOfLines = 0
        lable.textAlignment = .center
        lable.font = UIFont(name: "TrebuchetMS", size: 25)
        lable.sizeToFit()

        viewController.tableView.backgroundView = lable
        viewController.tableView.separatorStyle = .none
    }
}
