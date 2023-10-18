//
//  AddYummyViewModel.swift
//  YummyMap
//
//  Created by Whales on 10/11/23.
//

import Foundation

class AddYummyViewModel: ObservableObject {
    @Published var yummyPlace = YummyPlace(name: "",
                                           location: "",
                                           group: .init(),
                                           category: .others,
                                           description: "")
    
}
