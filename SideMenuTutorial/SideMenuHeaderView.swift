//
//  SideMenuHeaderView.swift
//  SideMenuTutorial
//
//  Created by George Clinkscales on 11/6/25.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48)
                .foregroundStyle(Color.accentColor)

            VStack(alignment: .leading, spacing: 2) {
                Text("George")
                    .font(.headline)
                Text("@yourhandle")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
    }
}

#Preview {
    SideMenuHeaderView()
}
