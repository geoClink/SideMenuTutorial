# SideMenuTutorial

A small SwiftUI demo showing a slide-out side menu (drawer) integrated into a simple app shell. The project demonstrates how to build a reusable side menu with header, menu rows, and simple navigation via a selected tab index.

Background

This project was created as a follow-along tutorial assignment to learn the basics of SwiftUI and how to build a simple side menu component. It served as a hands-on exercise to practice views, bindings, animations, and basic app structure.

Features
- SwiftUI-based: no UIKit required.
- Slide-out side menu with overlay tap-to-dismiss.
- Menu header and selectable rows with icons and highlighting.
- Simple tab-selection integration: menu options map to integer tabs in the main view.

Quick demo
- Tap the menu (hamburger) icon in the top-left to open the side menu.
- Tap an option to select it and close the menu.
- The main content area switches its displayed text based on the selected option.

Project structure
- SideMenuTutorialApp.swift — App entry point.
- ContentView.swift — Main view that contains the navigation stack, sample content, and toggles the side menu.
- SideMenuView.swift — The slide-out menu component that presents the overlay and menu items.
- SideMenuHeaderView.swift — A header view that appears at the top of the menu (avatar, name, email).
- SideMenuRowView.swift — A reusable row view used for each menu item, with selection highlighting.
- SideMenuOptionModel.swift — Enum model describing available menu options, titles, and SF Symbols.
- Assets.xcassets — App assets and colors.

Getting started
1. Requirements
   - Xcode 14+ (or the version you use for SwiftUI development)
   - macOS with the latest Xcode command line tools

2. Open the project
   - From Finder or Terminal, open the Xcode workspace or project file:
     - Workspace: SideMenuTutorial/SideMenuTutorial.xcodeproj
     - Or open Xcode and choose File → Open, then select `SideMenuTutorial/SideMenuTutorial.xcodeproj`.

3. Build & run
   - Select a simulator or a device and press Run (Cmd+R) in Xcode.

Customization ideas
- Replace the static text views in `ContentView` with your real app views for each tab.
- Add more menu sections, or a logout button at the bottom of `SideMenuView`.
- Wire the menu to a real navigation flow (e.g., using a Router or NavigationPath).

Contributing
- Feel free to open issues or submit PRs to add features, tests, or improvements.

License
This project is provided under the MIT License. See LICENSE (not included) or add one if desired.

Credits

This project was created as a follow-along tutorial based on a YouTube video by AppStuff:

- Video: https://www.youtube.com/watch?v=5T6ft6B5ZtA
- Channel: AppStuff

Credit: This repository contains code produced while following the above tutorial for learning purposes. Thanks to AppStuff for the tutorial content.

Notes
- This README was generated to summarize the existing demo code structure and usage. If you want, I can also add a LICENSE file, example screenshots, or CI config to automatically run static checks.
