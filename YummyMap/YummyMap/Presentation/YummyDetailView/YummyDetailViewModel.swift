//
//  YummyDetailViewModel.swift
//  YummyMap
//
//  Created by Whales on 10/17/23.
//

import Foundation

final class YummyDetailViewModel: ObservableObject {
    @Published var yummyPlace: YummyPlace
    
    init(_ yummyPlace: YummyPlace) {
        self.yummyPlace = yummyPlace
    }
}
