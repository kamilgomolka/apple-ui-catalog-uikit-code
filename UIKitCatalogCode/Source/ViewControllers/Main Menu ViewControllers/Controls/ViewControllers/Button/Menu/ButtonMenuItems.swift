//
//  ButtonMenuItems.swift
//  UIKitCatalogCode
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct ButtonMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Button styles",
                viewControllerProvider: { ButtonStylesViewController() }
            ),
            MenuItem(
                name: "System sizes",
                viewControllerProvider: { ButtonSystemSizesViewController() }
            ),
            MenuItem(
                name: "Corner style",
                viewControllerProvider: { ButtonCornerStyleViewController() }
            ),
            MenuItem(
                name: "Image placement",
                viewControllerProvider: { ButtonImagePlacementViewController() }
            ),
            MenuItem(
                name: "Toggle button",
                viewControllerProvider: { ButtonToggleViewController() }
            ),
            MenuItem(
                name: "Other",
                viewControllerProvider: { OtherButtonsViewController() }
            ),
        ]
    }
}
