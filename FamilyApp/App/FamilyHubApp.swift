//
//  FamilyAppApp.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/25/26.
//

import SwiftUI
import SwiftData

@main
struct FamilyHubApp: App {
   

    var body: some Scene {
        WindowGroup {
            MainTabView(family: FamilyData.doe)
        }
        
    }
}
