//
//  Coordinator.swift
//  YummyMap
//
//  Created by Whales on 10/13/23.
//

import Foundation
import NMapsMap

final class Coordinator: NSObject, ObservableObject, NMFMapViewTouchDelegate, NMFMapViewCameraDelegate {
    @Published var coord: (Double, Double) = (0.0, 0.0)
    @Published var userLocation:(Double, Double) = (0.0, 0.0)
    
    static let shared = Coordinator()
    
    let view = NMFNaverMapView()
    var locationManager: CLLocationManager?
    
    override init() {
        super.init()
        
        view.mapView.positionMode = .direction
        view.mapView.zoomLevel = 15
        view.mapView.minZoomLevel = 8
        view.mapView.maxZoomLevel = 18
    
        view.showLocationButton = true
        
        view.mapView.addCameraDelegate(delegate: self)
        view.mapView.touchDelegate = self
    }
    
    func getNaverMapView() -> NMFNaverMapView {
        view
    }
}
