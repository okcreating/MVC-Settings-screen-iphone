//
//  UIImageExtension.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 29/06/2024.
//

import Foundation
import UIKit

extension UIImage {
    
     func editIcon(imageName: String) -> UIImage {
        let icon = UIImage(systemName: imageName, withConfiguration: UIImage.SymbolConfiguration(pointSize: 35, weight: .light, scale: .unspecified))?.withTintColor(.white, renderingMode: .alwaysOriginal)
        return icon ?? UIImage()
    }
}
