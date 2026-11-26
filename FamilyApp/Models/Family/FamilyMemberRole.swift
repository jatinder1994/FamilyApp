//
//  FamilyMemberRole.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/25/26.
//

import Foundation

enum FamilyMemberRole:  String, CaseIterable, Identifiable, Codable{
    case parent
    case adult
    case teen
    case kid
    
    var id: String {rawValue}
    
    var displayName: String{
        switch self{
        case .parent: "Parent"
        case .adult: "Adult"
        case .teen: "Teen"
        case .kid: "Kid"
            
            
        }
    }
    
    var canManageFamily: Bool{
        self == .parent
    }
    
    var canAssignChores: Bool{
        self == .parent
    }
    
    var canCreateEvent: Bool{
        self != .kid
    }
    
    var canCreatePoll: Bool{
        self != .kid
    }
    
    var canCreatePrivateEvent: Bool{
        self != .kid
    }
    
    var canRequestRide: Bool{
        self == .teen
    }
    
    var canGiveRide: Bool{
        self == .parent || self == .adult
    }
    var useKidMode: Bool{
        self == .kid
    }
    
    
}
