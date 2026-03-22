//
//  SideMenuRowView.swift
//  SideMenuTutorial
//
//  Created by George Clinkscales on 11/6/25.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOption
    var isSelected: Bool = false

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: option.systemImageName)
                .frame(width: 24, height: 24)
                .foregroundColor(isSelected ? .white : .primary)

            Text(option.title)
                .foregroundColor(isSelected ? .white : .primary)

            Spacer()
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(isSelected ? Color.accentColor : Color.clear)
        .cornerRadius(8)
    }
}
