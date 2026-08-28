//
//  TableViewEditingMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct TableViewEditingMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Add and delete",
                viewControllerProvider: { TableViewAddAndDeleteViewController() }
            ),
            MenuItem(
                name: "Reorder",
                viewControllerProvider: { TableViewReorderViewController() }
            ),
            MenuItem(
                name: "Swipe actions",
                viewControllerProvider: { TableViewSwipeActionsViewController() }
            ),
        ]
    }
}
