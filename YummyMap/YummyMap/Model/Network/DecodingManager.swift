//
//  DecodingManager.swift
//  YummyMap
//
//  Created by Whales on 10/16/23.
//

import Foundation

struct DecodingManager {
    static func decodeJSON<Value: Decodable>(type: Value.Type, data: Data) throws -> Value {
        let decoder = JSONDecoder()

        guard let decodedData: Value = try? decoder.decode(type, from: data) else {
            throw DataError.failedDecoding
        }
        
        return decodedData
    }
}
