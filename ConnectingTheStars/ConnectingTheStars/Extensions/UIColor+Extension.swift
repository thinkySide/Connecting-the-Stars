//
//  UIColor+Extension.swift
//  ConnectingTheStars
//
//  Created by 김민준 on 2023/06/29.
//

import UIKit

extension UIColor {
    
    // MARK: - RGB Color

    /// RGBA 값으로 컬러를 설정합니다.
    ///
    /// - Parameter red: Red 값
    /// - Parameter green: Green 값
    /// - Parameter blue: Blue 값
    /// - Parameter alpha: Alpah 값
    convenience init(red: Int, green: Int, blue: Int, alpha: Int = 0xFF) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: CGFloat(alpha) / 255.0
        )
    }
    
    /// RGB 값으로 컬러를 설정합니다.
    ///
    /// - Parameter rgb: rgb값(0xFFFFFF)
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
