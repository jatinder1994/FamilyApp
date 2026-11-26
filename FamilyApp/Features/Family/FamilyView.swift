//
//  FamilyView.swift
//  FamilyApp
//
//  Created by Jatinder Nijjar on 11/25/26.
//

import SwiftUI

struct FamilyView: View {
    @State private var viewModel: FamilyViewModel
    
    init(family: Family) {
        _viewModel = State(initialValue: FamilyViewModel(family: family))
    }
    var body: some View {
        NavigationStack{
            Group{
                if viewModel.hasNoMember{
                    ContentUnavailableView("No family members yet", systemImage: "person.3", description: Text("Add people in your household to get started")
                    )
                }else{
                    List{
                        Section("Members"){
                            ForEach(viewModel.members){
                                member in MemberRow(member: member)
                            }
                        }
                    }
                }
            }.navigationTitle(viewModel.title)
        }
    }
}

#Preview {
    FamilyView(family: FamilyData.doe)
}
