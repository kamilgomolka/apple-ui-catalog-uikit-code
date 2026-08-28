//
//  TableViewSelectionMenuItems.swift
//  AppleUICatalogUIKitCode
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct TableViewSelectionMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Single",
                viewControllerProvider: { TableViewSelectionSingleViewController() }
            ),
            MenuItem(
                name: "Single with deselect",
                viewControllerProvider: { TableViewSelectionWithDeselectViewController() }
            ),
            MenuItem(
                name: "Multiple",
                viewControllerProvider: { TableViewSelectionMultipleViewController() }
            ),
        ]
    }
}
