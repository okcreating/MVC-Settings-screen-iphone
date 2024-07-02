//
//  ViewController.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 28/06/2024.
//

import UIKit

class Controller: UIViewController {

    var model: SettingsModel?

    private weak var mainView: View! {
        guard isViewLoaded else { return nil }
        return (view as? View)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = View()
        model = SettingsModel()
        configure()
    }
}

private extension Controller {
    func configure() {
        mainView.settingsTableView.register(DefaultTableViewCell.self, forCellReuseIdentifier: DefaultTableViewCell.identifier)
        mainView.settingsTableView.register(Value1TableViewCell.self, forCellReuseIdentifier: Value1TableViewCell.identifier)
        mainView.settingsTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        mainView.settingsTableView.dataSource = self
        mainView.settingsTableView.delegate = self

        title = "Settings"
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension Controller: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model?.createModels()[section].count ?? 0
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        model?.createModels().count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let setting = model?.createModels()[indexPath.section][indexPath.row]

        switch setting?.cellType {
        case .value1Type:
            let cell = tableView.dequeueReusableCell(withIdentifier: Value1TableViewCell.identifier) as? Value1TableViewCell
            cell?.setting = setting
            cell?.accessoryType = .disclosureIndicator
            return cell ?? UITableViewCell()
        case .customType:
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
            cell?.setting = setting
            cell?.accessoryView = UISwitch.init()
            return cell ?? UITableViewCell()
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: DefaultTableViewCell.identifier, for: indexPath) as? DefaultTableViewCell
            cell?.setting = setting
            cell?.accessoryType = .disclosureIndicator
            return cell ?? UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let setting = model?.createModels()[indexPath.section][indexPath.row]
        
        switch setting?.cellType {
        case .defaultType, .value1Type:
            let detailedController = DetailController()
            tableView.deselectRow(at: indexPath, animated: true)
            detailedController.detailedModel = setting
            navigationController?.pushViewController(detailedController, animated: true)
        default:
            return
        }
    }
}
