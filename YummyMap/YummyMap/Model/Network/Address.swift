//
//  Address.swift
//  YummyMap
//
//  Created by Whales on 10/16/23.
//

import Foundation

struct Address: Decodable {
    let status: String
    let meta: Meta
    let addresses: [DetailAddress]
    let errorMessage: String
}

struct Meta: Decodable {
    let totalCount: Int
    let page: Int
    let count: Int
}

struct DetailAddress: Decodable {
    let roadAddress: String
    let jibunAddress: String
    let englishAddress: String
    let addressElements: [AddressElement]
    let x: String
    let y: String
    let distance: Double
}

struct AddressElement: Decodable {
    let types: [String]
    let longName: String
    let shortName: String
    let code: String
}
