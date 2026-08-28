//
//  TableViewSeparatorStyleMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct TableViewSeparatorStyleMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "None",
                viewControllerProvider: { TableViewSeparatorStyleNoneViewController() }
            ),
            MenuItem(
                name: "Single line",
                viewControllerProvider: { TableViewSeparatorStyleLineViewController() }
            ),
        ]
    }
}
