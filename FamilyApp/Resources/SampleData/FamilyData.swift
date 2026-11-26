//
//  FamilyData.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/26/26.
//

import Foundation

enum FamilyData{
    
    static let mom = FamilyMember(name: "Mom", role: .parent, canDrive: true, colorForMember: .purple)
    static let dad = FamilyMember(name: "Dad", role: .parent, canDrive: true, colorForMember: .green)
    static let shawn = FamilyMember(name: "Shawn", role: .teen, canDrive: true, colorForMember: .brown)
    static let jane = FamilyMember(name: "Jane", role: .kid, colorForMember: .pink)
    static let doe = Family(name: "The Doe Family", familyMembers: [mom, dad, shawn, jane])
}
