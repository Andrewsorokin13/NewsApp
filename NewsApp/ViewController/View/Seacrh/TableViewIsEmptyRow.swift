//
//  TableViewIsEmptyRow.swift
//  NewsApp
//b
//

import UIKit

class TableViewIsEmptyRow {
     class func showMessageEmptyRow(message:String, viewController:UITableViewController, react: CGRect) {
        let messageLabel = UILabel(frame: react)
        messageLabel.text = message
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont(name: "TrebuchetMS", size: 25)
        messageLabel.sizeToFit()

        viewController.tableView.backgroundView = messageLabel
        viewController.tableView.separatorStyle = .none
    }
}
