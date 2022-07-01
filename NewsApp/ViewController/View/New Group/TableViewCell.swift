//
//  TableViewCell.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 30/06/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //MARK: = IBOutlet
    @IBOutlet weak var nameNewsLable: UILabel!
    @IBOutlet weak var imageNews: UIImageView!
    @IBOutlet weak var dateNewsLable: UILabel!
    @IBOutlet weak var contenViewCell: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        updateUIContenView()
    }
    
    private func updateUIContenView(){
        contenViewCell.backgroundColor = .white
        contenViewCell.layer.cornerRadius = 10
        
        contenViewCell.layer.shadowRadius = 4
        contenViewCell.layer.shadowColor = UIColor.darkGray.cgColor
        contenViewCell.layer.shadowOpacity = 0.3
        contenViewCell.layer.shadowOffset = CGSize(width: 3, height: 3)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
