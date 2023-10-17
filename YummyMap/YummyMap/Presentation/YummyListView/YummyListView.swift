//
//  YummyListView.swift
//  YummyMap
//
//  Created by Whales on 10/17/23.
//

import SwiftUI

struct YummyListView: View {
    @State var yummyListViewModel: YummyListViewModel
    
    init(_ yummyListViewModel: YummyListViewModel) {
        self.yummyListViewModel = yummyListViewModel
    }
    
    var body: some View {
        NavigationSplitView {
            List(yummyListViewModel.yummyPlaces) { place in
                NavigationLink {
                    YummyDetailView(YummyDetailViewModel(place))
                } label: {
                    YummyRow(yummyPlace: place)
                        .listRowInsets(.init())
                }
            }
            .navigationTitle("Yummy")
        } detail: {
            
        }
    }
}

struct YummyListView_Previews: PreviewProvider {
    static var previews: some View {
        YummyListView(YummyListViewModel(yummyPlaces: YummyMainViewModel.mockPlaces))
    }
}
