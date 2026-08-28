//
//  LabelMenuItems.swift
//  AppleUICatalogUIKitCode
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct LabelMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "System text styles",
                viewControllerProvider: { LabelTextStylesViewController() }
            ),
            MenuItem(
                name: "Font sizes in pt",
                viewControllerProvider: { LabelFontSizesViewController() }
            ),
            MenuItem(
                name: "Font weights",
                viewControllerProvider: { LabelFontWeightsViewController() }
            ),
        ]
    }
}
