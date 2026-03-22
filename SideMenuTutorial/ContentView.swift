//
//  ContentView.swift
//  SideMenuTutorial
//
//  Created by George Clinkscales on 11/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingMenu: Bool = false
    @State private var selected: SideMenuOption = .home

    var body: some View {
        ZStack {
            NavigationStack {
                VStack(spacing: 16) {
                    HStack {
                        Button(action: {
                            withAnimation { isShowingMenu.toggle() }
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .imageScale(.large)
                        }
                        .buttonStyle(.plain)

                        Spacer()
                    }
                    .padding()

                    contentView
                    Spacer()
                }
                .navigationTitle(selected.title)
            }

            SideMenuView(isShowing: $isShowingMenu, selected: $selected)
        }
    }

    @ViewBuilder
    var contentView: some View {
        switch selected {
        case .home:
            Text("Home content")
        case .favorites:
            Text("Favorites content")
        case .profile:
            Text("Profile content")
        case .settings:
            Text("Settings content")
        case .logout:
            Text("Logged out")
        }
    }
}

// Lightweight helper used only in previews to create bindings
struct StatefulPreviewWrapper<Value, Content: View>: View {
    @State private var value: Value
    private let content: (Binding<Value>, Binding<SideMenuOption>) -> Content

    init(_ initial: Value, @ViewBuilder content: @escaping (Binding<Value>, Binding<SideMenuOption>) -> Content) {
        self._value = State(initialValue: initial)
        self.content = content
    }

    var body: some View {
        // This initializer is specialized for the SideMenu preview usage above; keep it simple for the preview only.
        EmptyView()
    }
}

#Preview {
    ContentView()
}
