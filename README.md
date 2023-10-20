# <img src = "https://hackmd.io/_uploads/B1OngvlZp.png" width = "35"> MyDeliciousMap  <img src = "https://hackmd.io/_uploads/r1elEh5ka.png" width = "35">


- 프로젝트 기간: [2023년 10월 9일 ~ 10월 17일](https://github.com/WhalesJin/ios-project-manager/wiki/타임라인)
- 프로젝트 팀원: [Whales <img src = "https://hackmd.io/_uploads/r1elEh5ka.png" width = "20">](https://github.com/WhalesJin)
- 프로젝트 리뷰어: [GREEN <img src = "https://hackmd.io/_uploads/H1pGWNoyp.png" width = "20">](https://github.com/GREENOVER)

---

## 📖 목차
🍀 [소개](#소개) </br>
💻 [실행 화면](#실행_화면) </br>
🛠️ [사용 기술](#사용_기술) </br>
🧨 [트러블 슈팅](#트러블_슈팅) </br>
📚 [참고 링크](#참고_링크) </br>
👩‍👧‍👧 [about TEAM](#about_TEAM) </br>

</br>

## 🍀 소개<a id="소개"></a> - Yummy Map

<img src = "https://hackmd.io/_uploads/r1elEh5ka.png" width = "20"> : 내가 가본 **찐** 맛집만 골라골라!! 모임별로, 종류별로!



</br>

## 💻 실행 화면<a id="실행_화면"></a>

| 메인 화면 - 지도 뷰 | 마커 터치 |
| :--------: | :--------: |
| <img src = "https://github.com/WhalesJin/MyDeliciousMap/assets/124643545/56ac5756-be98-47e2-b145-85f54bca2820" width = "200"> | <img src = "https://github.com/WhalesJin/MyDeliciousMap/assets/124643545/da7f803c-778b-4e1a-b793-16f886696284"  width = "200"> |

| 리스트 모드 | 항목 선택 시 |
| :--------: | :--------: |
| <img src = "https://github.com/WhalesJin/MyDeliciousMap/assets/124643545/b8af90b7-ff16-4aaa-b231-93434ca3cb17" width = "200"> | <img src = "https://github.com/WhalesJin/MyDeliciousMap/assets/124643545/e35587c5-f7c2-4866-9158-2aa1e40e2a48"  width = "200"> |

| 맛집 추가 | 
| :--------: | 
| <img src = "https://github.com/WhalesJin/MyDeliciousMap/assets/124643545/1fdd2061-72b4-4f6a-bffa-393cd03b7a48" width = "200"> | 


</br>

## 🛠️ 사용 기술<a id="사용_기술"></a>
| 구현 내용	| 도구 |
|:---:|:---:|
|UI|SwiftUI|
|아키텍쳐|클린 아키텍쳐|
|디자인패턴|MVVM|
|Map|Naver Map|


</br>


## 🧨 트러블 슈팅<a id="트러블_슈팅"></a>

### 1️⃣ SwiftUI로 NaverMap 구현
🚨 **문제점** <br>
네이버 지도는 SwiftUI를 지원하지 않는다.

💡 **해결방법** <br>
UIViewRepresentable 구현
```swift
struct MapView: UIViewRepresentable {
    @ObservedObject var viewModel: YummyMainViewModel
    
    func makeCoordinator() -> Coordinator {
        Coordinator.shared
    }
    
    func makeUIView(context: Context) -> NMFNaverMapView { ... }
    
    func updateUIView(_ uiView: NMFNaverMapView, context: Context) { }
}

```

<br>


### 2️⃣ 주소지에 따른 지도의 위도, 경도
🚨 **문제점** <br>
우리는 주소지를 입력하지만 맵뷰에는 마커로 표시되어야 하고 그러려면 위도와 경도가 필요하다.

💡 **해결방법** <br>
네이버가 제공하는 Geocoder 사용.
URL로 Geocoder를 이용하여 네트워킹으로 위도 경도 받아오기


<br>



<br>

## 📚 참고 링크<a id="참고_링크"></a>

- [🍎 Apple Docs: SwiftUI Tutorial](https://developer.apple.com/tutorials/swiftui#swiftui-essentials)
- [<img src = "https://hackmd.io/_uploads/Hy71hlyza.png" width = 20> GitHub: NaverMap 개발가이드](https://navermaps.github.io/ios-map-sdk/guide-ko/0.html)
- [📚 StackOverflow: ViewModel Protocol](https://stackoverflow.com/questions/59503399/how-to-define-a-protocol-as-a-type-for-a-observedobject-property)
- <Img src = "https://github.com/mint3382/ios-calculator-app/assets/124643545/56986ab4-dc23-4e29-bdda-f00ec1db809b" width="20"/> [야곰닷넷: Test Double](https://yagom.net/courses/unit-test-작성하기/lessons/테스트를-위한-객체-만들기/topic/테스트를-위한-객체를-이용해서-테스트-작성하기/)
- <Img src = "https://hackmd.io/_uploads/ByTEsGUv3.png" width="20"/> [blog: 브랜치 생성 방식과 네이밍](https://ej-developer.tistory.com/75)
- <Img src = "https://hackmd.io/_uploads/ByTEsGUv3.png" width="20"/> [blog: Swift UI - Naver Map API 연동](https://velog.io/@tkddn0518/SwiftUI-Naver-Map-API-%EC%97%B0%EB%8F%99-%EC%98%A4%EB%A5%98-%ED%95%B4%EA%B2%B0)

<br>

---

## 👩‍👧‍👧 about TEAM<a id="about_TEAM"></a>

| <Img src = "https://hackmd.io/_uploads/r1elEh5ka.png" width="100"> | 🐬Whales🐬  | https://github.com/WhalesJin |
| :--------: | :--------: | :--------: |
