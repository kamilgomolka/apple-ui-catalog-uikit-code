//
//  CellStyleMenuItems.swift
//  AppleUICatalogUIKitCode
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct CellStyleMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Default font",
                viewControllerProvider: { CellStyleDefaultFontViewController() }
            ),
            MenuItem(
                name: "Body",
                viewControllerProvider: { CellStyleBodyViewController() }
            ),
            MenuItem(
                name: "Title3",
                viewControllerProvider: { CellStyleTitle3ViewController() }
            ),
            MenuItem(
                name: "Long text",
                viewControllerProvider: { CellStyleLongTextViewController() }
            ),
        ]
    }
}
