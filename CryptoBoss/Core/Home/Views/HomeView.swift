//
//  HomeView.swift
//  CryptoBoss
//
//  Created by Mariusz Zając on 03/11/2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
              // top movers wiev
                TopMoversView(viewModel: HomeViewModel())
                
                Divider()
                // all coins view
                AllCoinView(viewModel: HomeViewModel())
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
