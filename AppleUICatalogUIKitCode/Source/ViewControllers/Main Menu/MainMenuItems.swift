//
//  MainMenuItems.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct MainMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Bars",
                nestedItems: BarsMenuItems.all
            ),
            MenuItem(
                name: "CollectionView",
                nestedItems: CollectionViewMenuItems.all
            ),
            MenuItem(
                name: "Controls",
                nestedItems: ControlsMenuItems.all
            ),
            MenuItem(
                name: "PageViewController",
                viewControllerProvider: { PageViewController() }
            ),
            MenuItem(
                name: "ScrollView",
                nestedItems: ScrollViewMenuItems.all
            ),
            MenuItem(
                name: "TableView",
                nestedItems: TableViewMenuItems.all
            ),
            MenuItem(
                name: "ViewController transitions",
                nestedItems: TransitionsMenuItems.all
            ),
        ]
    }
}
