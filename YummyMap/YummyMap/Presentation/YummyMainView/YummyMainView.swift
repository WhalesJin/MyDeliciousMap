//
//  YummyMainView.swift
//  YummyMap
//
//  Created by Whales on 10/9/23.
//

import SwiftUI

struct YummyMainView: View {
    @StateObject var coordinator = Coordinator.shared
    @State var yummyMainViewModel: YummyMainViewModel
    
    var body: some View {
        ZStack {
            MapView(viewModel: yummyMainViewModel)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        yummyMainViewModel.changeToListView(true)
                    } label: {
                        Image(systemName: "list.bullet.circle")
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 20, weight: .bold, design: .default))
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Spacer()
                        Text("주소를 검색하세요")
                            .foregroundColor(.secondary)
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 20, weight: .bold, design: .default))
                        Spacer()
                    }
                    .frame(width: 230, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    Button {
                        yummyMainViewModel.setFormVisible(true)
                    } label: {
                        Image(systemName: "plus")
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            
                    }
                    
                    Spacer()
                }
                .foregroundColor(.black)
                .shadow(radius: 5, x: 5, y: 5)
                
                Spacer()
            }
        }
        .onAppear {
            Coordinator.shared.checkIfLocationServiceIsEnabled()
        }
    }
}

struct YummyMainView_Previews: PreviewProvider {
    static var previews: some View {
        YummyMainView(yummyMainViewModel: YummyMainViewModel.mock)
    }
}
