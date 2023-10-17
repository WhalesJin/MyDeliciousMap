//
//  YummyDetailView.swift
//  YummyMap
//
//  Created by Whales on 10/17/23.
//

import SwiftUI

struct YummyDetailView: View {
    @State var yummyDetailViewModel: YummyDetailViewModel
    var yummyPlace: YummyPlace {
        yummyDetailViewModel.yummyPlace
    }
    
    init(_ yummyDetailViewModel: YummyDetailViewModel) {
        self.yummyDetailViewModel = yummyDetailViewModel
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 20) {
                Text("그룹")
                Text(yummyPlace.group.name)
                Text("(๑˃؂˂๑)")
                    .foregroundColor(Color(yummyPlace.group.color))
                    .font(.title3)
            }
            
            HStack(spacing: 20) {
                Text("종류")
                Text(yummyPlace.category.rawValue)
            }
            
            HStack(spacing: 20) {
                Text("이름")
                Text(yummyPlace.name)
            }
            
            HStack(spacing: 20) {
                Text("주소")
                Text(yummyPlace.location)
            }
            
            HStack(spacing: 20) {
                Text("메모")
                Text(yummyPlace.description)
                    .padding(0)
            }
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}

struct YummyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        YummyDetailView(
            YummyDetailViewModel(
                YummyPlace(
                    name: "원동미나리삼겹살",
                    location: "서울 용산구 한강대로77길 4-1",
                    group: .init(name: "가보쟈", color: .systemGreen),
                    category: .koreanFood,
                    description: "누가 추천해줬더라 🤔"
                )
            )
        )
    }
}
