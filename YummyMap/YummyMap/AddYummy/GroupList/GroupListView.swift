//
//  GroupListView.swift
//  YummyMap
//
//  Created by Whales on 10/11/23.
//

import SwiftUI

struct GroupListView: View {
    @State var groupListViewModel: GroupListViewModel
    @State private var selectionOption = 0
    
    var yummyGroups: [String] {
        groupListViewModel.yummyGroupNames
    }
    
    var body: some View {
        VStack {
            Picker("Select Group", selection: $selectionOption) {
                ForEach(0 ..< yummyGroups.count) {
                    Text(yummyGroups[$0])
                }
            }
            .pickerStyle(.menu)
        }
    }
}

struct AddNewGroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupListView(groupListViewModel: GroupListViewModel.mock)
    }
}
