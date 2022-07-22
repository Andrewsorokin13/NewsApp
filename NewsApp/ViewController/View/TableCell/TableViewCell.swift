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
    @IBOutlet weak var contenViewCell: UIView!
    @IBOutlet weak var ImageactivityIndicator: UIActivityIndicatorView!
    
    
    var viewModel: TableViewNewsCellViewModelType! {
        didSet {
            guard let viewModel = viewModel else { return }
            nameNewsLable.text = viewModel.title
            
            guard let imageUrl = viewModel.urlToImage else { return }
            guard let imageData = URL(string: imageUrl) else { return }
            self.imageNews.loadIm(from: imageData, inddicator: ImageactivityIndicator)
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateUIContenView()
    }
    
    
    private func updateUIContenView(){
        contenViewCell.backgroundColor = .clear
        let content = [imageNews]
        content.forEach { content in
            content?.layer.cornerRadius = 10
            content?.layer.shadowRadius = 6
            content?.layer.shadowColor = UIColor.darkGray.cgColor
            content?.layer.shadowOpacity = 0.5
            content?.layer.shadowOffset = CGSize(width: 6, height: 6)
        }
    }
}
