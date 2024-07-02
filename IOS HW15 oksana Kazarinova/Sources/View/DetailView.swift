//
//  DetailView.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 28/06/2024.
//

import UIKit

class DetailView: UIView {

    lazy var message: UILabel = {
       let label = UILabel()
       label.font = .systemFont(ofSize: 16, weight: .semibold)
       label.textColor = .white
       label.textAlignment = .center
       label.translatesAutoresizingMaskIntoConstraints = false
       return label
   }()

    lazy var detailedIcon: UIImageView = {
        let iconBG = UIImageView()
        iconBG.contentMode = .scaleAspectFit
        iconBG.layer.masksToBounds = true
        iconBG.clipsToBounds = true
        iconBG.layer.cornerRadius = 5
        iconBG.tintColor = .white
        iconBG.layer.borderWidth = 2
        iconBG.layer.borderColor = UIColor.white.cgColor
        iconBG.translatesAutoresizingMaskIntoConstraints = false
        return iconBG
    }()

    lazy var icon: UIImage = {
        let image = UIImage()
        return image
    }()

   // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

   // MARK: - Setup

   private func setupHierarchy() {
       addSubview(message)
       addSubview(detailedIcon)
   }

   private func setupLayout() {
       NSLayoutConstraint.activate([
           message.centerXAnchor.constraint(equalTo: self.centerXAnchor),
           message.centerYAnchor.constraint(equalTo: self.centerYAnchor),
           message.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
           message.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
           
           detailedIcon.widthAnchor.constraint(equalToConstant: 70),
           detailedIcon.heightAnchor.constraint(equalToConstant: 70),
           detailedIcon.centerXAnchor.constraint(equalTo: self.centerXAnchor),
           detailedIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -120)
       ])
   }

    func configureView(with model: Setting) {
        message.text = "Thank you. You pressed \(model.name.rawValue)."
        switch model.name {
        case .blueTooth, .siriAndSearch, .homeScreen:
            detailedIcon.image = UIImage(named: model.icon)
            backgroundColor = .black
        default:
            detailedIcon.image = icon.editIcon(imageName: model.icon)
            backgroundColor = UIColor.init(hex: model.imageViewColorCode)
        }
    }
}
