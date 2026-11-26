//
//  FamilyMembersTests.swift
//  FamilyAppTests
//
//  Created by Jatinder Nijjar on 11/26/26.
//

import Testing
@testable import FamilyApp

struct FamilyMembersTests {

    @Test func kidCanNotDrive() {
        let kid = FamilyMember(name: "Zach", role: .kid, canDrive: true, colorForMember: .brown)
        #expect(kid.canDrive == false)
    }
    @Test func chaningTeenToKidDriveTes(){
        var fred = FamilyMember(name: "Fred", role: .teen, canDrive: true, colorForMember: .navy)
        fred.role = .kid
        #expect(fred.canDrive == false)
    }

}
