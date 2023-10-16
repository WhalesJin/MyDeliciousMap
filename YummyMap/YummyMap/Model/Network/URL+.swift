//
//  URL+.swift
//  YummyMap
//
//  Created by Whales on 10/16/23.
//

import Foundation

extension URL {
    init?(_ baseURL: String, _ path: String, _ queries: [URLQueryItem]) {
        var urlComponents = URLComponents(string: baseURL)
        urlComponents?.path = path
        urlComponents?.queryItems = queries

        guard let url = urlComponents?.url else {
            return nil
        }

        self = url
    }
}
