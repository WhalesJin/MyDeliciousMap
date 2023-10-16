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
    
    func addMarker(yummyPlace: YummyPlace) {
        let marker = NMFMarker()
        
        marker.position = NMGLatLng(lat: yummyPlace.latitude, lng: yummyPlace.longitude)
        marker.mapView = view.mapView
        marker.iconImage = NMF_MARKER_IMAGE_BLACK
        marker.iconTintColor = yummyPlace.group.color
        
    }
}

extension Coordinator: CLLocationManagerDelegate {
    func checkIfLocationServiceIsEnabled() {
        DispatchQueue.global().async {
            if CLLocationManager.locationServicesEnabled() {
                DispatchQueue.main.async {
                    self.locationManager = CLLocationManager()
                    self.locationManager!.delegate = self
                    self.checkLocationAuthorization()
                }
            } else {
                print("Show an alert letting them know this is off and to go turn i on")
            }
        }
    }
    
    func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("위치 정보 접근이 제한되었습니다.")
        case .denied:
            print("위치 정보 접근을 거절했습니다. 설정에 가서 변경하세요.")
        case .authorizedAlways, .authorizedWhenInUse:
            print("Success")
            
            coord = (Double(locationManager.location?.coordinate.latitude ?? 0.0), Double(locationManager.location?.coordinate.longitude ?? 0.0))
            userLocation = (Double(locationManager.location?.coordinate.latitude ?? 0.0), Double(locationManager.location?.coordinate.longitude ?? 0.0))
            
            fetchUserLocation()
            
        @unknown default:
            break
        }
    }
    
    func fetchUserLocation() {
        if let locationManager = locationManager {
            let lat = locationManager.location?.coordinate.latitude
            let lng = locationManager.location?.coordinate.longitude
            
            let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: lat ?? 0.0, lng: lng ?? 0.0), zoomTo: 15)
            cameraUpdate.animation = .easeIn
            cameraUpdate.animationDuration = 1
            
            let locationOverlay = view.mapView.locationOverlay
            locationOverlay.location = NMGLatLng(lat: lat ?? 0.0, lng: lng ?? 0.0)
            locationOverlay.hidden = false
            
            locationOverlay.icon = NMFOverlayImage(name: "location_overlay_icon")
            locationOverlay.iconWidth = CGFloat(NMF_LOCATION_OVERLAY_SIZE_AUTO)
            locationOverlay.iconHeight = CGFloat(NMF_LOCATION_OVERLAY_SIZE_AUTO)
            locationOverlay.anchor = CGPoint(x: 0.5, y: 1)
            
            view.mapView.moveCamera(cameraUpdate)
        }
    }
}
