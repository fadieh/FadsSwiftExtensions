//
//  UIImage+Extensions.swift
//  FadsSwiftExtensions
//

import UIKit

extension UIImageView {
    
    // Mark: Make Image Circular
    func makeCircular(_ imageHeight: CGFloat) -> CGFloat {
        return imageHeight / 2
    }
    
    // Mark: Add Overlay
    func addOverlay(_ imageHeight: CGFloat, imageWidth: CGFloat, backgroundColor: UIColor) -> UIView {
        let overlay:UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: imageWidth, height: imageHeight))
        overlay.backgroundColor = backgroundColor
        return overlay
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
