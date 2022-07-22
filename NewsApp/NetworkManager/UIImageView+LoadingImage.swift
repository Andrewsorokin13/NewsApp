//
//  UIImageView+LoadingImage.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 21/07/2022.
//

import UIKit

let imageCash = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    func loadIm(from url: URL, inddicator: UIActivityIndicatorView) {
        var task: URLSessionDataTask!
        
        inddicator.startAnimating()
        image = nil
        
        if let task = task {
            task.cancel()
        }
        if let imageFromCashe = imageCash.object(forKey: url.absoluteString as AnyObject) as? UIImage {
            self.image = imageFromCashe
            return
        }
        
        task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, let newImage = UIImage(data: data) else {
                print("Не получилось загрузить фото по URL")
                return
            }
            imageCash.setObject(newImage, forKey: url.absoluteString as AnyObject)
            DispatchQueue.main.async {
                self.image = newImage
                inddicator.stopAnimating()
                inddicator.isHidden = true
            }
        }
        task.resume()
    }
}

