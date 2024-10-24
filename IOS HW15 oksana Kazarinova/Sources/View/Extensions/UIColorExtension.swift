//
//  UIColorExtension.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 29/06/2024.
//

import Foundation
import UIKit

extension UIColor {
    public  convenience init(hex : String) {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            self.init(red: 1, green: 1, blue: 1, alpha: 1)
            return
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        self.init(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
        //    public convenience init?(hex: String) {
        //        let r, g, b, a: CGFloat
        //
        //        if hex.hasPrefix("#") {
        //            let start = hex.index(hex.startIndex, offsetBy: 1)
        //            let hexColor = String(hex[start...])
        //
        //            if hexColor.count == 8 {
        //                let scanner = Scanner(string: hexColor)
        //                var hexNumber: UInt64 = 0
        //
        //                if scanner.scanHexInt64(&hexNumber) {
        //                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
        //                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
        //                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
        //                    a = CGFloat(hexNumber & 0x000000ff) / 255
        //
        //                    self.init(red: r, green: g, blue: b, alpha: a)
        //                    return
        //                }
        //            }
        //        }
        //        return nil
        //    }
    }
}
