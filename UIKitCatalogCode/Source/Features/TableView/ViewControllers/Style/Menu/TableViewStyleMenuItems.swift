//
//  TableViewStyleMenuItems.swift
//  UIKitCatalogCode
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct TableViewStyleMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Plain",
                viewControllerProvider: { TableViewStylePlainViewController() }
            ),
            MenuItem(
                name: "Grouped",
                viewControllerProvider: { TableViewStyleGroupedViewController() }
            ),
            MenuItem(
                name: "InsetGrouped",
                viewControllerProvider: { TableViewStyleInsetGroupedViewController() }
            ),
        ]
    }
}
