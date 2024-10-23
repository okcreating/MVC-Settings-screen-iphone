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
        let iconBG = UIImageView(frame: CGRect(x: 4, y: 4, width: 30, height: 30))
        iconBG.contentMode = .scaleAspectFit
        iconBG.clipsToBounds = true
        iconBG.layer.masksToBounds = true
        iconBG.layer.cornerRadius = 5
      //  iconBG.translatesAutoresizingMaskIntoConstraints = false
        return iconBG
    }()

//    private lazy var switchOnTheRight: UISwitch = {
//        let switcher = UISwitch()
//        switcher.setOn(false, animated: true)
//        switcher.addTarget(self, action: #selector(switchOnOff), for: .valueChanged)
//        switcher.translatesAutoresizingMaskIntoConstraints = false
//        return switcher
//    }()

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
       // addSubview(switchOnTheRight)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            settingIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            settingIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            settingIcon.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.7),
            settingIcon.widthAnchor.constraint(equalTo: settingIcon.heightAnchor),


            settingName.leadingAnchor.constraint(equalTo: settingIcon.trailingAnchor, constant: 20),
            settingName.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            settingName.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),

//            switchOnTheRight.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
//            switchOnTheRight.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
//            switchOnTheRight.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            //switchOnTheRight.centerXAnchor.constraint(equalTo: settingName.centerXAnchor)
        ])
    }

    // MARK: - Actions

//    @objc
//    func switchOnOff(sender: UISwitch) {
//        switchOnTheRight.setOn(!sender.isOn, animated: true)
//    }

        // MARK: - Reuse

    override func prepareForReuse() {
        self.accessoryType = .none
    }
}
