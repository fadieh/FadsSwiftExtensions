//
//  UIImageView+Extensions.swift
//  FadsSwiftExtensions
//

import UIKit

extension UIImageView {
    
    // Mark: Make Image Circular
    func makeCircular(_ imageHeight: CGFloat) {
        self.layer.cornerRadius = imageHeight / 2
    }
    
    // Mark: Load From Url
    func loadFromUrl(url: NSURL){
        URLSession.shared.dataTask(with: url as URL) { (data, response, error) in
            if let httpResponse = response as? HTTPURLResponse {
                switch httpResponse.statusCode {
                case 200:
                    if let imgData = data {
                        DispatchQueue.main.async {
                            self.image = UIImage(data: imgData)
                        }
                    }
                default:
                    print("GET Request Failed. HTTP Status Code: \(httpResponse.statusCode)")
                }
            }
            }.resume()
    }
    
}
