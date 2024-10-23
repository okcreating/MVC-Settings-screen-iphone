//
//  DetailController.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 28/06/2024.
//

import UIKit

class DetailViewController: UIViewController {

    var detailedModel: SettingsModel?

    private weak var detailedView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = DetailView()
        detailedModel = SettingsModel()
        
    }
}

private extension DetailViewController {
    func cofigureView() {

        
    }
}
