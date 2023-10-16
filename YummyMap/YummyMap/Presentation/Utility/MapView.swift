//
//  MapView.swift
//  YummyMap
//
//  Created by Whales on 10/11/23.
//

import SwiftUI
import NMapsMap

struct MapView: UIViewRepresentable {
    @ObservedObject var viewModel: YummyMainViewModel
    
    func makeCoordinator() -> Coordinator {
        Coordinator.shared
    }
    
    func makeUIView(context: Context) -> NMFNaverMapView {
        viewModel.places.forEach { place in
            context.coordinator.addMarker(yummyPlace: place)
        }
        
        return context.coordinator.getNaverMapView()
    }
    
    func updateUIView(_ uiView: NMFNaverMapView, context: Context) { }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(viewModel: YummyMainViewModel.mock)
    }
}
