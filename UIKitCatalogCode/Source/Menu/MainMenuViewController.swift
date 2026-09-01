//
//  MainMenuViewController.swift
//  UIKitCatalogCode
//
//  Created by Kamil Gomółka on 15/03/2022.
//

import UIKit

class MainMenuViewController: MenuViewController {

    // MARK: Init

    init() {
        super.init(items: MainMenuItems.all)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "UIKit Code"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .never
    }
}
