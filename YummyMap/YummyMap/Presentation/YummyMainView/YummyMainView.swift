//
//  YummyMainView.swift
//  YummyMap
//
//  Created by Whales on 10/9/23.
//

import SwiftUI

struct YummyMainView: View {
    @StateObject var coordinator = Coordinator.shared
    
    var body: some View {
        ZStack {
            MapView()
                .ignoresSafeArea()
            
            Rectangle() // 검색창
                .size(width: 250, height: 50)
                .fill(.white)
                .position(CGPoint(x: 230, y: 380))
            
            Rectangle() // 필터
                .size(width: 50, height: 50)
                .fill(.white)
                .position(CGPoint(x: 520, y: 380))
                
        }
    }
}

struct YummyMainView_Previews: PreviewProvider {
    static var previews: some View {
        YummyMainView()
    }
}
