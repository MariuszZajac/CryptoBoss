//
//  CoinRowView.swift
//  CryptoBoss
//
//  Created by Mariusz Zając on 03/11/2022.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack{
            //market rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            //coin name
            VStack (alignment: .leading, spacing: 4){
        
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text("BTC")
                    .font(.caption)
                    .padding(.leading,6)
            }
            .padding(.leading, 2)
            // coin price
            
            Spacer()
            
            VStack (alignment: .trailing, spacing: 4){
        
                Text("$ 20,000.00")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                
                Text(" +10.09%")
                    .font(.caption)
                    .foregroundColor(.green)
                    .padding(.leading,6)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView()
    }
}
