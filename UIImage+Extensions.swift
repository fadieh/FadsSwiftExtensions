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
    
}
