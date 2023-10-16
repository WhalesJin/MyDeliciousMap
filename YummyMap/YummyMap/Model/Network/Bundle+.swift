//
//  Bundle+.swift
//  YummyMap
//
//  Created by Whales on 10/15/23.
//

import Foundation

extension Bundle {
    var ClientID: String {
        guard let file = self.path(forResource: "APIKey", ofType: "plist") else { return "" }
        
        guard let resource = NSDictionary(contentsOfFile: file) else { return "" }
        
        guard let key = resource["ClientID"] as? String else {
            fatalError("Client ID error")
        }
        
        return key
    }
    
    var ClientSecret: String {
        guard let file = self.path(forResource: "APIKey", ofType: "plist") else { return "" }
        
        guard let resource = NSDictionary(contentsOfFile: file) else { return "" }
        
        guard let key = resource["ClientSecret"] as? String else {
            fatalError("Client Secret error")
        }
        
        return key
    }
}
