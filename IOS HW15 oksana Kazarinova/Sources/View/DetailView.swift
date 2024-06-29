//
//  DetailView.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 28/06/2024.
//

import UIKit

class DetailView: UIView {

    private var message: UILabel = {
       let label = UILabel()
       label.font = .systemFont(ofSize: 16, weight: .semibold)
       label.textColor = .white
       label.textAlignment = .center
       label.translatesAutoresizingMaskIntoConstraints = false
       return label
   }()

    private var settingIcon: UIImageView = {
        let iconBG = UIImageView()
        iconBG.contentMode = .scaleAspectFit
        iconBG.layer.masksToBounds = true
        iconBG.clipsToBounds = true
        iconBG.layer.cornerRadius = 5
        iconBG.tintColor = .white
        iconBG.translatesAutoresizingMaskIntoConstraints = false
        return iconBG
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
       addSubview(settingIcon)
   }

   private func setupLayout() {
       NSLayoutConstraint.activate([
           message.centerXAnchor.constraint(equalTo: self.centerXAnchor),
           message.centerYAnchor.constraint(equalTo: self.centerYAnchor),
           message.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
           message.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
           settingIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: -30),
           settingIcon.widthAnchor.constraint(equalToConstant: 50),
           settingIcon.heightAnchor.constraint(equalToConstant: 50)
       ])
   }
}
