//
//  CoinImage.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/20/24.
//

import SwiftUI


struct CoinImage: View {
    
    @StateObject var viewModel: CoinImageViewModel
    
    init(coin: Coin) {
        _viewModel = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = viewModel.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if viewModel.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundStyle(Color.theme.secondaryText)
            }
        }
    }
}


struct CoinImage_Previews: PreviewProvider {
    static var previews: some View {
        CoinImage(coin: dev.coin)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}

