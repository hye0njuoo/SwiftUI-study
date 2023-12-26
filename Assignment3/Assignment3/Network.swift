//
//  Network.swift
//  Assignment3
//
//  Created by 성현주 on 12/24/23.
//

import Foundation

class NetworkArticles: ObservableObject {
    @Published var articles = [Article]()
    @Published var author = [Author]()
    
    init() {
        guard let url = URL(string: "https://api.realworld.io/api/articles?limit=1") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Network request error: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let result = try JSONDecoder().decode(ArticleResponse.self, from: data)
                DispatchQueue.main.async {
                    self.articles = result.articles
                    print("API Response: \(self.articles)")
                }
            } catch {
                print("Error decoding JSON: \(error.localizedDescription)\n\(error)")
            }
        }
        .resume()
        
    }
}
