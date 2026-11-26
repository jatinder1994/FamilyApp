//
//  FamilyViewModel.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/26/26.
//

import Foundation

@Observable
final class FamilyViewModel{
    
    var family: Family
    
    init(family: Family) {
        self.family = family
    }
    
    var title: String {family.name}
    
    var members: [FamilyMember] {
        family.members
    }
    
    var hasNoMember: Bool {
        family.members.isEmpty
    }
    
    
}
