//
//  YummyPlaceManager.swift
//  YummyMap
//
//  Created by Whales on 10/16/23.
//

import Foundation

final class YummyPlaceManager {
    func fetchYummyPlaceAddress(
        with location: String,
        completion: @escaping (Result<Address, Error>) -> Void
    ) {
        let networkManager = NetworkManager()
        
        networkManager.fetchData(url: GeocodeAPI.query(address: location).url) { result in
            do {
                guard let data = try result.get() else { return }
                let decodedData = try DecodingManager.decodeJSON(type: Address.self, data: data)
                
                completion(.success(decodedData))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
