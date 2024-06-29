//
//  ViewController.swift
//  IOS HW15 oksana Kazarinova
//
//  Created by Oksana Kazarinova on 28/06/2024.
//

import UIKit

class Controller: UIViewController {

    private var mainView: View? {
        guard isViewLoaded else { return nil }
        return view as? View
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = View()
    }
}

