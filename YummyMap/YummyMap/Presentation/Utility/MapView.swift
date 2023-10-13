//
//  MapView.swift
//  YummyMap
//
//  Created by Whales on 10/11/23.
//

import SwiftUI
import NMapsMap

struct MapView: UIViewRepresentable {
    @ObservedObject var viewModel = YummyMainViewModel()
    
    func makeUIView(context: Context) -> NMFNaverMapView {
        let view = NMFNaverMapView()
        view.showZoomControls = false
        view.mapView.positionMode = .direction
        view.mapView.zoomLevel = 10
        return view
    }
    
    func updateUIView(_ uiView: NMFNaverMapView, context: Context) { }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
