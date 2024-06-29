//
//  UIImageViewExtension.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 29/06/2024.
//

import Foundation
import UIKit

extension UIImageView {
    private func setBGColor(colorCode: String) -> UIImageView{
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor(hex: colorCode)
        imageView.frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        return imageView
    }
}
