//
//  YummyMainViewModel.swift
//  YummyMap
//
//  Created by Whales on 10/13/23.
//

import SwiftUI

class YummyMainViewModel: ObservableObject {
final class YummyMainViewModel: ObservableObject {
    @Published var places: [YummyPlace] = []
    @Published var groups: [Group] = []
    
    init(places: [YummyPlace]) {
        self.places = places
    }
    
    func collectGroup() {
        places.forEach { place in
            groups.append(place.group)
        }
    }
extension YummyMainViewModel {
    static let mock = YummyMainViewModel(places: mockPlaces)
    
    static let mockPlaces = [
        YummyPlace(
            name: "물꽁오리",
            location: "인천 계양구 계산천동로 51",
            group: .init(name: "야곰", color: .brown),
            category: .koreanFood,
            description: "다산이랑 메리랑 헤헤헿"
        ),
        YummyPlace(
            name: "서울뼈구이매운족발",
            location: "서울 동대문구 왕산로 274-1",
            group: .init(name: "야곰", color: .brown),
            category: .koreanFood,
            description: "시온 적극 추천. 맛맛존맛. 근데 매운 맛은 너무 매워 🥵."
        ),
        YummyPlace(
            name: "알베르",
            location: "서울 강남구 강남대로102길 34",
            group: .init(name: "야곰", color: .brown),
            category: .cafe,
            description: "야아 모각코의 성지."
        ),
        YummyPlace(
            name: "원동미나리삼겹살",
            location: "서울 용산구 한강대로77길 4-1",
            group: .init(name: "가보쟈", color: .green),
            category: .koreanFood,
            description: "누가 추천해줬더라 🤔"
        ),
        YummyPlace(
            name: "빽돈 신논형직영점",
            location: "서울 강남구 학동로2길 58 1층",
            group: .init(name: "야곰", color: .brown),
            category: .koreanFood,
            description: "8기 수료 뒷풀이!! 재밌었지 그치이"
        ),
        YummyPlace(
            name: "팔백집 강남점",
            location: "서울 강남구 봉은사로2길 15 1층",
            group: .init(name: "가보쟈", color: .green),
            category: .koreanFood,
            description: "9기 수료 뒷풀이 예정"
        ),
        YummyPlace(
            name: "일일양 문래창작촌점",
            location: "서울 영등포구 도림로128길 17-1 1층",
            group: .init(name: "가보쟈", color: .green),
            category: .koreanFood,
            description: ""
        ),
        YummyPlace(
            name: "순돌이곱창",
            location: "전북 군산시 우체통거리2길 43-9",
            group: .init(name: "가보쟈", color: .green),
            category: .koreanFood,
            description: "맛잘알 릴라 추천 👍🏻"
        ),
        YummyPlace(
            name: "아이맛이야장작철판구이 본점",
            location: "경기 고양시 덕양구 행주로17번길 5-5",
            group: .init(name: "TOP", color: .red),
            category: .koreanFood,
            description: "진짜 여긴 꼭 또 가야지"
        ),
        YummyPlace(
            name: "고베규카츠 서울 강남점",
            location: "서울 강남구 강남대로102길 29 예촌빌딩",
            group: .init(name: "GOOD", color: .yellow),
            category: .japaneseFood,
            description: "맛있었지만 웨이팅 최악...금밤의 강남은 끔찍...."
        ),
    ]
}
