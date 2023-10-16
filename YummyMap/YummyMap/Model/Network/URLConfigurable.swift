//
//  URLConfigurable.swift
//  YummyMap
//
//  Created by Whales on 10/15/23.
//

import Foundation

protocol URLConfigurable {
    var baseURL: String { get }
    var path: String { get }
    var queries: [URLQueryItem] { get }
}
