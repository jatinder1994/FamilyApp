//
//  Family.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/25/26.
//

import Foundation

struct Family: Identifiable, Codable {
    
    let id: UUID
    var name: String
    var members: [FamilyMember]
    
    init(id: UUID = UUID(), name: String, familyMembers: [FamilyMember]) {
        self.id = id
        self.name = name
        self.members = familyMembers
    }
    
    var drivers: [FamilyMember] {
        members.filter {$0.canDrive}
    }
    
    func member(withID id: UUID) -> FamilyMember? {
        members.first {$0.id == id}
    }
}
