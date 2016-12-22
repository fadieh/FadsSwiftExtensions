//
//  UIColor+Extensions.swift
//  FadsSwiftExtensions
//

extension UIColor {
    
    // Mark: RGBA
    func rgba(red:CGFloat, green: CGFloat, blue: CGFloat, alpha:CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
}
