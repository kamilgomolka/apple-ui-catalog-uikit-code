//
//  NavigationBarLargeTitleViewController.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 18/04/2022.
//

import UIKit

class NavigationBarLargeTitleViewController: BaseNavigationBarViewController {

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        ///
        /// To have large title working, additional property should be set in root ViewController
        /// (in this project, it's done in MainMenuViewController):
        ///
        /// navigationController?.navigationBar.prefersLargeTitles = true
        ///

        navigationItem.largeTitleDisplayMode = .always
    }
}
