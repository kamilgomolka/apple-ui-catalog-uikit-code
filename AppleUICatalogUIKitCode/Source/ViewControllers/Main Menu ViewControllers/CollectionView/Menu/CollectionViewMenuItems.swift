//
//  CollectionViewMenuItems.swift
//  AppleUICatalogUIKitCode
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct CollectionViewMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Basic grid",
                viewControllerProvider: { CollectionViewGridViewController() }
            ),
            MenuItem(
                name: "Sections with headers",
                viewControllerProvider: { CollectionViewSectionsViewController() }
            ),
            MenuItem(
                name: "Badge icon",
                viewControllerProvider: { CollectionViewBadgeViewController() }
            ),
            MenuItem(
                name: "Paging (Orthogonal scrolling)",
                viewControllerProvider: { CollectionViewPagingViewController() }
            ),
        ]
    }
}
