//
//  FamilyMemberColor+FamilyColor.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/25/26.
//

import SwiftUI

extension FamilyMemberColor{
    var light: Color {Color("\(rawValue)Light")}
    var medium: Color {Color("\(rawValue)Medium")}
    var dark: Color {Color("\(rawValue)Dark")}
}

#Preview {
    List {
            Section("Members") {
                ForEach(FamilyMemberColor.allCases) { color in
                    HStack(spacing: 12) {
                        Circle()
                            .fill(color.light)
                            .frame(width: 32, height: 32)
                            .overlay(
                                Text(String(color.displayName.prefix(1)))
                                    .font(.subheadline.weight(.semibold))
                                    .foregroundStyle(color.dark)
                            )
                        RoundedRectangle(cornerRadius: 2)
                            .fill(color.medium)
                            .frame(width: 3, height: 28)
                        Text(color.displayName)
                    }
                }
            }

            Section("Family") {
                HStack(spacing: 12) {
                    Circle()
                        .fill(Color.familyLight)
                        .frame(width: 32, height: 32)
                        .overlay(
                            Image(systemName: "person.3")
                                .font(.caption)
                                .foregroundStyle(Color.familyDark)
                        )
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.familyMedium)
                        .frame(width: 3, height: 28)
                    Text("Everyone")
                }
            }
        }
}
