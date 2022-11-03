//
//  HomeViewModel.swift
//  CryptoBoss
//
//  Created by Mariusz Zając on 03/11/2022.
//

import SwiftUI

class HomeViewModel: ObservableObject {
 @Published var coins = [Coin]()
 @Published var topCoin = [Coin]()
    init() {
        fetchCoinData()
    }
    
    
    func fetchCoinData() {
        
        let urlString =
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24"
       
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            if let responce = response as? HTTPURLResponse {
                print("DEBUG: Response code \(responce.statusCode)")
            }
            
            guard let data = data else { return }
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopCoin()
                }
                
                
                
            }catch let error {
                print("Failde decode with error: \(error)")
            }
        }.resume()
                
    }
    func configureTopCoin() {
        let topCoin = coins.sorted(by: {$0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topCoin = Array(topCoin.prefix(5))
    }
}
