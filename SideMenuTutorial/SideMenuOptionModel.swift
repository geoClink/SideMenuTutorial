//
//  SideMenuOptionModel.swift
//  SideMenuTutorial
//
//  Created by George Clinkscales on 11/6/25.
//

import Foundation
import SwiftUI

enum SideMenuOption: String, CaseIterable, Identifiable {
    case home
    case favorites
    case profile
    case settings
    case logout

    var id: String { rawValue }

    var title: String {
        switch self {
        case .home: return "Home"
        case .favorites: return "Favorites"
        case .profile: return "Profile"
        case .settings: return "Settings"
        case .logout: return "Log Out"
        }
    }

    var systemImageName: String {
        switch self {
        case .home: return "house"
        case .favorites: return "star"
        case .profile: return "person.crop.circle"
        case .settings: return "gearshape"
        case .logout: return "arrowshape.turn.up.left"
        }
    }
}
