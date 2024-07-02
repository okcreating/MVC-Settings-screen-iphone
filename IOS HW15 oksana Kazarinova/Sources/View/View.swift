//
//  View.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 28/06/2024.
//

import UIKit

class View: UIView {

    // MARK: - Outlets

    lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGray6
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups

    private func setupHierarchy() {
        addSubview(settingsTableView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            settingsTableView.topAnchor.constraint(equalTo: self.topAnchor),
            settingsTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            settingsTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            settingsTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
