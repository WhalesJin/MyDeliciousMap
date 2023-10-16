//
//  DataError.swift
//  YummyMap
//
//  Created by Whales on 10/16/23.
//

import Foundation

enum DataError: LocalizedError {
    case notFoundAsset
    case failedDecoding
    
    var errorDescription: String? {
        switch self {
        case .notFoundAsset:
            return "해당 DataAsset을 찾을 수 없습니다."
        case .failedDecoding:
            return "디코딩에 실패하였습니다."
        }
    }
}
