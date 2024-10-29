//
//  CoinLogo.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/22/24.
//

import SwiftUI

struct CoinLogo: View {
    
    let coin: Coin
    
    var body: some View {
        VStack {
            CoinImage(coin: coin)
                .frame(width: 50, height: 50)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            Text(coin.name)
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

struct CoinLogo_Previews: PreviewProvider {
    static var previews: some View {
        CoinLogo(coin: dev.coin)
    }
}


