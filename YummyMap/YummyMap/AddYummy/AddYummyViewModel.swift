//
//  AddYummyViewModel.swift
//  YummyMap
//
//  Created by Whales on 10/11/23.
//

import Foundation

class AddYummyViewModel: ObservableObject {
    @Published var yummyPlace: YummyPlace
    
    init(yummyPlace: YummyPlace) {
        self.yummyPlace = yummyPlace
    }
}

extension AddYummyViewModel {
    static let mock = AddYummyViewModel(
        yummyPlace:  YummyPlace(
            name: "물꽁오리",
            location: "인천 계양구 계산천동로 51",
            group: .init(),
            category: .koreanFood,
            description: "다산이랑 메리랑 헤헤헿"
        )
    )
}
