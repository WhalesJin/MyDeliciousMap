//
//  NetworkManager.swift
//  YummyMap
//
//  Created by Whales on 10/16/23.
//

import Foundation

struct NetworkManager {
    func fetchData(url: URL?, completion: @escaping (Result<Data?, NetworkError>) -> Void) {
        guard let url = url else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                completion(.failure(NetworkError.requestFailed))
                
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                completion(.failure(NetworkError.invalidResponse))
                
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                
                return
            }
            
            completion(.success(data))
        }
        
        task.resume()
    }
}
