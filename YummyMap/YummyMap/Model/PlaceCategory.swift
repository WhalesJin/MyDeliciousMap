//
//  PlaceCategory.swift
//  YummyMap
//
//  Created by Whales on 10/12/23.
//

import Foundation

enum PlaceCategory: String, CaseIterable, Identifiable {
    var id: Self { self }
    
    case koreanFood = "한식"
    case japaneseFood = "일식"
    case chineseFood = "중식"
    case westernFood = "양식"
    case cafe = "카페"
    case bakery = "빵집"
    case pub = "술집"
    case others = "기타"
}
