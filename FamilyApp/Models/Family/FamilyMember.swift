//
//  FamilyMember.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/25/26.
//

import Foundation

struct FamilyMember: Identifiable, Codable, Hashable{
    let id: UUID
    var name: String
    var role: FamilyMemberRole {
            didSet {
                if role == .kid {
                    canDrive = false
                }
            }
        }
    var canDrive: Bool
    var colorForMember: FamilyMemberColor
    init(id: UUID = UUID(), name: String, role: FamilyMemberRole, canDrive: Bool = false, colorForMember: FamilyMemberColor) {
        self.id = id
        self.name = name
        self.role = role
        self.canDrive = role == .kid ? false : canDrive
        self.colorForMember = colorForMember
    }
    
    var initial: String {
           guard let first = name.trimmingCharacters(in: .whitespaces).first else {
               return "?"
           }
           return String(first).uppercased()
       }
    
    
}


