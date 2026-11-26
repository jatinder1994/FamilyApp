//
//  FamilyTabView.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/25/26.
//

import SwiftUI

struct MainTabView: View {
    let family: Family
    
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house"){
                HomeView()
            }
            Tab("Calendar", systemImage: "calendar"){
                CalendarView()
            }
            Tab("List", systemImage: "checklist"){
                ListView()
            }
            Tab("Chores", systemImage: "sparkles"){
                ChoresView()
            }
            Tab("Family", systemImage: "person.3"){
                FamilyView(family: family)
            }
        }
    }
}

#Preview {
    MainTabView(family: FamilyData.doe)
}
