//
//  DetailController.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 28/06/2024.
//

import UIKit

class DetailController: UIViewController {

    var detailedModel: Setting?

     weak var detailedView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = DetailView()
        cofigureView()
    }
}

extension DetailController {
    func cofigureView() {
        guard let models = detailedModel else { return }
        detailedView?.configureView(with: models )
        }
    }

