//
//  AvatarView.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/26/26.
//

import SwiftUI

struct AvatarView: View {
    
    let member: FamilyMember
    var size:CGFloat = 34
    
    var body: some View {
        Circle()
            .fill(member.colorForMember.light)
            .frame(width: size, height: size)
            .overlay{
                Text(member.initial)
                    .font(.system(size: size * 0.4, weight: .semibold))
                    .foregroundStyle(member.colorForMember.dark)
            }
    }
}

#Preview {
    AvatarView(member: FamilyData.jane)
}
