//
//  TopMoversItemView.swift
//  CryptoBoss
//
//  Created by Mariusz Zając on 03/11/2022.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading, spacing: 3){
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 9)
            //info coin
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            //%chainge
            Text(coin.priceChangePercentage24H.toPercentage())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red )
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 3))
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView(coin: coin)
//    }
//}
