# UIKit Catalog — Programmatic (Views created in Code)

[![CI](https://github.com/kamilgomolka/apple-ui-catalog-uikit-code/actions/workflows/ci.yml/badge.svg)](https://github.com/kamilgomolka/apple-ui-catalog-uikit-code/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/Swift-6.0-F05138.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/iOS-26.0%2B-000000.svg)](https://developer.apple.com/ios/)
[![Xcode](https://img.shields.io/badge/Xcode-26-1575F9.svg)](https://developer.apple.com/xcode/)
[![License](https://img.shields.io/badge/License-MIT-lightgrey.svg)](LICENSE)

UIKit reference app, views created programatically. Each system control is built in the Swift code, and is shown with its public properties exercised, so you can see how UIKit controls actually look. No third-party libraries, no in-house custom widgets.

iPhone (portrait) and iPad (all orientations). Light and Dark Mode follow the system appearance.

## What It Shows

The root menu is a tree of nested `MenuItem`s. Each leaf is a `UIViewController` that configures one UIKit surface and nothing else.

| Demo | What it shows | Key API |
| --- | --- | --- |
| Bars | Navigation bar (small/large titles, grouped, custom `titleView`, buttons, prompt, custom back item), tab bar (simple, overflow, badge), toolbar (styles, system items, with a table) | `UINavigationBar`, `UINavigationItem`, `UITabBarController`, `UIToolbar`, `UIBarButtonItem` |
| CollectionView | Compositional grid, section headers, badge supplementary views, orthogonal paging | `UICollectionViewCompositionalLayout`, `NSCollectionLayoutSection.orthogonalScrollingBehavior` |
| Controls | Activity indicator, `UIButton.Configuration` (style, size, corner, image placement, toggle), Dynamic Type labels, page control, progress, segmented control, slider, stepper, switch, text field traits, text view editing / data detectors | `UIButton.Configuration`, `UIFont.TextStyle`, `UITextInputTraits`, `UIDataDetectorTypes` |
| PageViewController | Horizontal paging driven by a segmented control in the navigation bar | `UIPageViewController` |
| ScrollView | Vertical, horizontal, both axes, paging | `UIScrollView`, `isPagingEnabled` |
| TableView | Style, separators, selection, cell style / accessory / insets, headers and footers, section index, editing (insert/delete, reorder, swipe actions) | `UITableView.Style`, `UITableViewCell.AccessoryType`, `UISwipeActionsConfiguration`, `sectionIndexTitles(for:)` |
| ViewController transitions | Push, modal presentation and transition styles, page sheet, sheet detents | `UIModalPresentationStyle`, `UIModalTransitionStyle`, `UISheetPresentationController.Detent` |

## Architecture

Plain, programmatic UIKit — no Storyboards/XIBs except `LaunchScreen.storyboard`, no third-party dependencies. `SceneDelegate` installs a `UINavigationController` rooted at `MainMenuViewController`. Nested menus push another `MenuViewController`; leaves push the demo.

Navigation is data, not a coordinator: `MenuItem` is either a nested list, a `viewControllerProvider`, or a custom `clickHandler` (used where the parent must configure the back item or present modally). Shared bases (`StackViewController`, `BaseViewController` + `KeyboardHelper`) keep keyboard avoidance and Auto Layout out of the demos.

```
Config/
├── Local.xcconfig.example                  # Template for the untracked Local.xcconfig (Team ID)
└── UIKitCatalogCode.xcconfig               # Platform, Swift, signing, versioning, Info.plist keys

UIKitCatalogCode/
├── Source/
│   ├── Application/
│   │   ├── AppDelegate.swift
│   │   └── SceneDelegate.swift
│   ├── Models/
│   ├── Utils/                              # Keyboard avoidance, bundled mock data
│   └── ViewControllers/
│       ├── Base ViewController/            # Menu, stack, and keyboard-aware bases
│       ├── Main Menu/                      # Root catalog
│       └── Main Menu ViewControllers/      # One folder per UIKit surface
└── SupportingFiles/
    ├── Assets.xcassets
    ├── Base.lproj/LaunchScreen.storyboard
    ├── Info.plist                          # Scene manifest only; the rest comes from xcconfig
    └── Mock data/
```

Xcode's own default warning flags still live in `project.pbxproj`; everything this project decides for itself lives in `Config/`.

## Requirements

- Xcode 26 or later
- iOS 26.0+ (`IPHONEOS_DEPLOYMENT_TARGET`)
- Swift 6 language mode, approachable concurrency, strict memory safety, `MainActor` default isolation

## Getting Started

```bash
git clone https://github.com/kamilgomolka/apple-ui-catalog-uikit-code.git
cd apple-ui-catalog-uikit-code
open UIKitCatalogCode.xcodeproj
```

Build and run the `UIKitCatalogCode` scheme on an iOS 26+ Simulator. Signing is not required for the Simulator. To run on a device, copy the local configuration template and fill in your Apple Developer Team ID:

```bash
cp Config/Local.xcconfig.example Config/Local.xcconfig
```

`Config/Local.xcconfig` is untracked, so no Team ID ever lands in version control.

## Tooling

```bash
make build         # compile for the Simulator
make format        # apply swift-format in place
make destinations  # list available Simulator destinations
```

`swift-format` ships with the Xcode toolchain, so there is nothing to install.
Automation: Command `make format` is configured as a Run Script build phase (before Compile Sources), so every build formats sources in place.

Override the Simulator with `make build SIMULATOR='iPhone 17 Pro'`.

## License

MIT — see [LICENSE](LICENSE).
