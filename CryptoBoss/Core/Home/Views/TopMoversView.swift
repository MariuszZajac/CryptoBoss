//
//  TopMoversView.swift
//  CryptoBoss
//
//  Created by Mariusz Zając on 03/11/2022.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Text("Top 5 Coin")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack(spacing: 12){
                    ForEach(viewModel.topCoin) { coin in
                        TopMoversItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeViewModel())
    }
}
