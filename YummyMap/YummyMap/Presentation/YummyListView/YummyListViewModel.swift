//
//  YummyListViewModel.swift
//  YummyMap
//
//  Created by Whales on 10/17/23.
//

import Foundation

final class YummyListViewModel: ObservableObject {
    @Published var yummyPlaces: [YummyPlace]
    @Published var groups: [Group] = []
    @Published var groupNames: [String] = []
    
    init(yummyPlaces: [YummyPlace]) {
        self.yummyPlaces = yummyPlaces
        
        yummyPlaces.forEach { place in
            groups.append(place.group)
            groupNames.append(place.group.name)
        }
    }
}
