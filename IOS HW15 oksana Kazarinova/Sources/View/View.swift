//
//  View.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 28/06/2024.
//

import UIKit

class View: UIView {

    // MARK: - Outlets

    private lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(DefaultTableViewCell.self, forCellReuseIdentifier: DefaultTableViewCell.identifier)
        tableView.register(Value1TableViewCell.self, forCellReuseIdentifier: Value1TableViewCell.identifier)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
        self.backgroundColor = .systemGray6
        self.title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        //settings = Setting.settings
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
