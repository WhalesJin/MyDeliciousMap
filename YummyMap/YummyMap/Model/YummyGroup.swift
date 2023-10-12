//
//  YummyGroup.swift
//  YummyMap
//
//  Created by Whales on 10/12/23.
//

import SwiftUI

struct Group: Identifiable {
    var id = UUID()
    var name: String
    var color: UIColor
    
    init(name: String = "미지정", color: UIColor = .gray) {
        self.name = name
        self.color = color
    }
}
