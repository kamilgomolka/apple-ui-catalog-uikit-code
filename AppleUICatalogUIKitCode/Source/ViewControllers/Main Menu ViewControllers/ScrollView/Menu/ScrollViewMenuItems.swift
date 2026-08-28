//
//  ScrollViewMenuItems.swift
//  AppleUICatalogUIKitCode
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct ScrollViewMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Vertical",
                viewControllerProvider: { ScrollViewVerticalViewController() }
            ),
            MenuItem(
                name: "Horizontal",
                viewControllerProvider: { ScrollViewHorizontalViewController() }
            ),
            MenuItem(
                name: "Two directions",
                viewControllerProvider: { ScrollViewTwoDirectionsViewController() }
            ),
            MenuItem(
                name: "Paging enabled",
                viewControllerProvider: { ScrollViewWithPagingViewController() }
            ),
        ]
    }
}
