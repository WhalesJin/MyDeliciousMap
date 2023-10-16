//
//  GroupListViewModel.swift
//  YummyMap
//
//  Created by Whales on 10/11/23.
//

import SwiftUI

class GroupListViewModel: ObservableObject {
    @Published var yummyGroup: [Group]
    
    @Published var yummyGroupNames: [String] = []
    
    init(yummyGroup: [Group]) {
        self.yummyGroup = yummyGroup
        yummyGroup.forEach {
            yummyGroupNames.append($0.name)
        }
    }
}

extension GroupListViewModel {
    static let mock = GroupListViewModel(yummyGroup: [
        Group(),
        Group(name: "Som", color: .blue),
        Group(name: "Dasan", color: .green),
        Group(name: "Mary", color: .yellow),
        Group(name: "Kobe", color: .red),
    ])
}
