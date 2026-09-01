//
//  SimpleTabbarChild4.swift
//  UIKitCatalogCode
//
//  Created by Kamil Gomółka on 27/04/2022.
//

import UIKit

class SimpleTabbarChild4: SingleLabelViewController {

    // MARK: Init

    init() {
        super.init(labelText: "Child4")

        print("SimpleTabbarChild4 - init")

        setupTabbarItem()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        print("SimpleTabbarChild4 - init(coder:)")

        setupTabbarItem()
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGreen

        print("SimpleTabbarChild4 - viewDidLoad")
    }

    isolated deinit {
        print("SimpleTabbarChild4 - deinit")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("SimpleTabbarChild4 - viewWillAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("SimpleTabbarChild4 - viewWillDisappear")
    }

    // MARK: Setup

    func setupTabbarItem() {
        tabBarItem.title = "Child4"
        tabBarItem.image = UIImage(systemName: "magnifyingglass")
    }
}
