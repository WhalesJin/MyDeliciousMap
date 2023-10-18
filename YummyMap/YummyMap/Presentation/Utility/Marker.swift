//
//  Marker.swift
//  YummyMap
//
//  Created by Whales on 10/16/23.
//

import NMapsMap

struct Marker {
    let marker = NMFMarker()
    
    init(yummyPlace: YummyPlace, mapView: NMFMapView) {
        marker.position = NMGLatLng(lat: yummyPlace.latitude, lng: yummyPlace.longitude)
        marker.mapView = mapView
        marker.iconImage = NMF_MARKER_IMAGE_BLACK
        marker.iconTintColor = yummyPlace.group.color
    }
    
    func showDetail(_ action: NMFOverlayTouchHandler?) {
        marker.touchHandler = action
    }
}
