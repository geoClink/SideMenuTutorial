//
//  SideMenuView.swift
//  SideMenuTutorial
//
//  Created by George Clinkscales on 11/6/25.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selected: SideMenuOption

    var body: some View {
        ZStack(alignment: .leading) {
            // overlay
            if isShowing {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation { isShowing = false }
                    }
            }

            // side panel
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 8) {
                    SideMenuHeaderView()

                    ForEach(SideMenuOption.allCases) { option in
                        Button(action: {
                            withAnimation {
                                selected = option
                                isShowing = false
                            }
                        }) {
                            SideMenuRowView(option: option, isSelected: option == selected)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }

                    Spacer()
                }
                .frame(width: 260)
                .background(Color(UIColor.systemBackground))
                .offset(x: isShowing ? 0 : -300)
                .animation(.easeInOut(duration: 0.25), value: isShowing)

                Spacer()
            }
        }
    }
}

#Preview {
    StatefulPreviewWrapper((true, SideMenuOption.home)) { isShowing, selected in
        SideMenuView(isShowing: isShowing, selected: selected)
    }
}
