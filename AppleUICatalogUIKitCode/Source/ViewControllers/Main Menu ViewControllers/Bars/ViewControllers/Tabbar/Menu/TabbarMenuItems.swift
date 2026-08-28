//
//  TabbarMenuItems.swift
//  AppleUICatalogUIKitCode
//
//  Created by Kamil Gomółka on 27/04/2022.
//

import UIKit

struct TabbarMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Simple Tabbar",
                viewControllerProvider: { SimpleTabbarViewController() }
            ),
            MenuItem(
                name: "Many Items",
                viewControllerProvider: { ManyItemsTabbarViewController() }
            ),
            MenuItem(
                name: "Badge",
                viewControllerProvider: { BadgeTabbarViewController() }
            ),
        ]
    }
}
