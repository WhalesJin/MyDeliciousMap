//
//  YummyRow.swift
//  YummyMap
//
//  Created by Whales on 10/17/23.
//

import SwiftUI

struct YummyRow: View {
    let yummyPlace: YummyPlace
    
    var body: some View {
        HStack {
            Text("(๑˃؂˂๑)")
                .foregroundColor(Color(yummyPlace.group.color))
                .font(.title3)
            VStack(alignment: .leading) {
                Text(yummyPlace.category.rawValue)
                    .font(.caption)
                Text(yummyPlace.name)
            }
        }
    }
}

struct YummyRow_Previews: PreviewProvider {
    static var previews: some View {
        YummyRow(yummyPlace: YummyPlace(
            name: "원동미나리삼겹살",
            location: "서울 용산구 한강대로77길 4-1",
            group: .init(name: "가보쟈", color: .systemGreen),
            category: .koreanFood,
            description: "누가 추천해줬더라 🤔"
        ))
    }
}
