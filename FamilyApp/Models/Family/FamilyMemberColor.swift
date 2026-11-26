//
//  FamilyMemberColor.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/25/26.
//

import Foundation

enum FamilyMemberColor: String, CaseIterable, Identifiable, Codable {
    case purple
    case pink
    case green
    case teal
    case navy
    case brown
    case sun
    case gray
    
    
    var id :String {rawValue}
    var displayName: String {rawValue.capitalized}
    
}


