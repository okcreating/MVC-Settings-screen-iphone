//
//  CustomTableViewCell.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 29/06/2024.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier = "CustomTableViewCell"

    var setting: Setting? {
        didSet {
            settingName.text = setting?.name.rawValue
            settingIcon.backgroundColor = UIColor.init(hex: setting?.imageViewColorCode ?? "")
            settingIcon.image = icon.editIcon(imageName: setting?.icon ?? "")
        }
    }

    // MARK: - Outlets

    private var settingName: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()

    private var icon: UIImage = {
        let image = UIImage()
        return image
    }()

    private var settingIcon: UIImageView = {
        let iconBG = UIImageView()
        iconBG.contentMode = .scaleAspectFit
        iconBG.clipsToBounds = true
        iconBG.layer.masksToBounds = true
        iconBG.layer.cornerRadius = 5
        iconBG.translatesAutoresizingMaskIntoConstraints = false
        return iconBG
    }()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups

    private func setupHierarchy() {
        addSubview(settingName)
        addSubview(settingIcon)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            settingIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            settingIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            settingIcon.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4),
            settingIcon.widthAnchor.constraint(equalToConstant: 30),
            settingIcon.heightAnchor.constraint(equalToConstant: 30),

            settingName.leadingAnchor.constraint(equalTo: settingIcon.trailingAnchor, constant: 20),
            settingName.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            settingName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
        ])
    }

        // MARK: - Reuse

    override func prepareForReuse() {
        self.accessoryType = .none
    }
}
