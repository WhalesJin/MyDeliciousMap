//
//  YummyPlace.swift
//  YummyMap
//
//  Created by Whales on 10/11/23.
//

final class YummyPlace {
    var name: String
    var location: String
    var group: Group
    var category: PlaceCategory
    var description: String
    
    let yummyPlaceManager = YummyPlaceManager()
    
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    
    init(
        name: String,
        location: String,
        group: Group,
        category: PlaceCategory,
        description: String
    ) {
        self.name = name
        self.location = location
        self.group = group
        self.category = category
        self.description = description
        
        fetchYummyPlaceAddress()
    }
    
    func fetchYummyPlaceAddress() {
        yummyPlaceManager.fetchYummyPlaceAddress(with: location) { [weak self] result in
            switch result {
            case .success(let address):
                self?.latitude = Double(address.addresses[0].x) ?? 0.0
                self?.longitude = Double(address.addresses[0].y) ?? 0.0
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
