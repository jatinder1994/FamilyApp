//
//  MemberRow.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/26/26.
//

import SwiftUI

struct MemberRow: View {
    let member: FamilyMember
    
    var body: some View {
        HStack(spacing: 12){
            AvatarView(member: member)
            VStack(alignment: .leading, spacing: 2){
                Text(member.name)
                Text(member.role.displayName)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
        }.padding(.vertical, 2)
    }
}

#Preview {
    List{
        MemberRow(member: FamilyData.dad)
        MemberRow(member: FamilyData.mom)
        MemberRow(member: FamilyData.shawn)
    }
}
