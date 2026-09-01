//
//  TextViewMenuItems.swift
//  UIKitCatalogCode
//
//  Created by Kamil Gomółka on 17/04/2022.
//

import UIKit

struct TextViewMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Editable",
                viewControllerProvider: { TextViewEditableViewController() }
            ),
            MenuItem(
                name: "Non editable",
                viewControllerProvider: { TextViewNonEditableViewController() }
            ),
            MenuItem(
                name: "Non editable, non selectable",
                viewControllerProvider: { TextViewNonEditableNonSelectableViewController() }
            ),
            MenuItem(
                name: "Data detectors",
                viewControllerProvider: { TextViewDataDetectorsViewController() }
            ),
        ]
    }
}
