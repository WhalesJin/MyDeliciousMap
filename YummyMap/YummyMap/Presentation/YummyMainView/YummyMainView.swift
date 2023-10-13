//
//  YummyMainView.swift
//  YummyMap
//
//  Created by Whales on 10/9/23.
//

import SwiftUI

struct YummyMainView: View {
    var body: some View {
        NavigationStack {
            MapView()
                .navigationTitle("Yummy Map")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("List") {
                            
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Filter") {
                            
                        }
                    }
                    ToolbarItem(placement: .bottomBar) {
                        Button("List") {

                        }
                    }
                    
                }
        }
    }
}

struct YummyMainView_Previews: PreviewProvider {
    static var previews: some View {
        YummyMainView()
    }
}
