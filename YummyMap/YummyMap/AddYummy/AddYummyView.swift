//
//  AddYummyView.swift
//  YummyMap
//
//  Created by Whales on 10/11/23.
//

import SwiftUI

struct AddYummyView: View {
    @State var addYummyViewModel: AddYummyViewModel
    var yummyPlace: YummyPlace {
        addYummyViewModel.yummyPlace
    }
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Picker("종류", selection: $addYummyViewModel.yummyPlace.category) {
                    ForEach(PlaceCategory.allCases) { Text($0.rawValue) }
                }
                .pickerStyle(.segmented)
                
                HStack(spacing: 10) {
                    Text("그룹")
                    GroupListView(groupListViewModel: GroupListViewModel.mock)
                }
                
                HStack(spacing: 20) {
                    Text("이름")
                    TextField("", text: $addYummyViewModel.yummyPlace.name)
                }
                
                HStack(spacing: 20) {
                    Text("주소")
                    TextField("", text: $addYummyViewModel.yummyPlace.location)
                }
                
                HStack(alignment: .top, spacing: 20) {
                    Text("메모")
                        .padding(.top, 9)
                    TextEditor(text: $addYummyViewModel.yummyPlace.description)
                        .padding(0)
                }
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            .navigationTitle("맛집 추가")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(role: .cancel) {
                        
                    } label: {
                        Text("취소")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("저장") {
                        
                    }
                }
            }
        }
    }
}

struct AddYummyView_Previews: PreviewProvider {
    static var previews: some View {
        AddYummyView(addYummyViewModel: AddYummyViewModel.mock)
    }
}
