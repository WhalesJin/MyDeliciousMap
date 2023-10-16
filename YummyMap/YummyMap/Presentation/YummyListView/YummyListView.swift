//
//  YummyListView.swift
//  YummyMap
//
//  Created by Whales on 10/17/23.
//

import SwiftUI

struct YummyListView: View {
    private let yummyPlaces: [YummyPlace]
    var groups: [Group] = []
    
    init(yummyPlaces: [YummyPlace]) {
        self.yummyPlaces = yummyPlaces
        
        yummyPlaces.forEach { place in
            groups.append(place.group)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(yummyPlaces) { place in
                    YummyRow(yummyPlace: place)
                        .listRowInsets(.init())
            }
            .navigationTitle("Yummy")
        } detail: {
            
        }
    }
}

struct YummyListView_Previews: PreviewProvider {
    static var previews: some View {
        YummyListView(yummyPlaces: YummyMainViewModel.mockPlaces)
    }
}
