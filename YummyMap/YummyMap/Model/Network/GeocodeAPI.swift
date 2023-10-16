//
//  GeocodeAPI.swift
//  YummyMap
//
//  Created by Whales on 10/15/23.
//

import Foundation

enum GeocodeAPI {
    case query(address: String)
}

extension GeocodeAPI: URLConfigurable {
    var baseURL: String {
        return "https://naveropenapi.apigw.ntruss.com"
    }
    
    var path: String {
        return "/map-geocode/v2/geocode"
    }
    
    var queries: [URLQueryItem] {
        switch self {
        case .query(let address):
            return [
                URLQueryItem(name: "query", value: address),
                URLQueryItem(name: "X-NCP-APIGW-API-KEY-ID", value: Bundle.main.ClientID),
                URLQueryItem(name: "X-NCP-APIGW-API-KEY", value: Bundle.main.ClientSecret)
            ]
        }
    }
    
    var url: URL? {
        return URL(baseURL, path, queries)
    }
}
