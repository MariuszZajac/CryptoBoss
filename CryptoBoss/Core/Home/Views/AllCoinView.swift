//
//  AllCoinView.swift
//  CryptoBoss
//
//  Created by Mariusz Zając on 03/11/2022.
//

import SwiftUI

struct AllCoinView: View {
    var body: some View {
       
        VStack(alignment: .leading){
            Text("All Coin")
                       .font(.headline)
                       .padding()
            HStack{
                Text("Coin")
                Spacer()
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
        
            ScrollView{
                VStack{
                    ForEach(0 ..< 50, id: \.self) {_ in
                        CoinRowView()
                    }
                }
            }
        }
    }
}

struct AllCoinView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinView()
    }
}
