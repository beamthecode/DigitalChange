//
//  Coin.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/20/24.
//

import Foundation


// API info
/*
 
 URL:
 
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 JSON:
 
 {"id":"bitcoin","symbol":"btc","name":"Bitcoin","image":"https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400","current_price":67348,"market_cap":1328968661932,"market_cap_rank":1,"fully_diluted_valuation":1414627524619,"total_volume":18559339658,"high_24h":67684,"low_24h":66299,"price_change_24h":376.1,"price_change_percentage_24h":0.56157,"market_cap_change_24h":8233689418,"market_cap_change_percentage_24h":0.62342,"circulating_supply":19728403.0,"total_supply":21000000.0,"max_supply":21000000.0,"ath":73738,"ath_change_percentage":-8.63613,"ath_date":"2024-03-14T07:10:36.635Z","atl":67.81,"atl_change_percentage":99252.34775,"atl_date":"2013-07-06T00:00:00.000Z","roi":null,"last_updated":"2024-07-20T20:29:30.069Z","sparkline_in_7d":{"price":[58775.69500096371,58667.7987229473,58607.32407797006,58611.52229196427,58697.87243688947,59468.70435751196,59243.90724033287,59853.44861354578,59743.941788773656,59379.36393666037,59488.175182718296,60150.163597970684,60214.36763074621,59984.65762595794,60097.322837311534,60271.26869875073,60177.292569808065,59941.15613408041,60118.991511978995,59612.65548216775,59711.46094543786,60065.86230213515,60161.01663767256,60105.30674070386,60059.69256017659,60050.742527089096,59931.33689327525,60067.87504727605,61154.25049027309,60853.24309488443,60881.48885782499,61229.480385878865,61426.756346514296,62576.12941558953,62652.102418708375,62601.21539596413,62758.97597203408,62949.67638884755,62890.40632199661,62780.86549256509,62751.71811398488,62580.176000609245,62468.314406226025,62732.57146771641,62865.69466528791,63270.41832525062,63072.320176727175,63281.61714686876,63128.74570297137,63556.877053620046,63425.52176425553,63765.75236709564,63705.15201182238,64315.59239185009,64894.80923587094,64636.81716840933,64781.59633903313,64885.241268445745,64774.95557913305,64516.59579834891,63630.04229989184,62801.117747491146,62909.93699601887,62768.69454731729,63136.05202803013,63481.47969338322,63795.90436231302,63774.623843572,63179.658545696824,63898.0794376149,65235.73062171311,64435.20570024861,64566.00222661687,64780.92991307614,65144.970819556984,64772.756090466675,64566.06071322991,64698.987079558225,65178.21786410649,65621.07086132235,65663.96246100322,65724.43070784534,65727.38563188832,65866.76728301505,65691.81355407793,65580.27545006957,65316.587628053414,65203.83934198469,65209.820079650875,65077.63026247519,64838.2623882498,64734.50728516352,65021.51236363203,65024.15480192185,64689.74595192153,64340.502941883205,64246.41763737234,64576.21887222642,64591.54908451396,64523.47476463111,64352.04165931211,64288.46405518303,64101.49229397971,64543.149741454596,64667.536281704495,64638.949054802986,64785.32198038902,64639.0270103694,64817.12652407137,65005.47170329841,64714.2525694089,64955.2253984854,64720.07674355206,64619.52454366042,64667.49854157397,64897.466640545805,64654.91835236968,63771.94116284888,63676.04850620038,63940.49373036791,63590.66331234905,63590.63618283955,63604.750257719155,63747.28527433048,63705.35583839652,63981.370034196996,63975.96715356269,63565.528204915856,63809.22054036418,63838.349226737955,64192.30665062532,64130.08316868449,64221.280424641045,64183.36643211268,63824.805155061695,63869.76609325864,63672.044363448615,64091.17432236077,64043.14970164301,64397.689991955085,65163.527672846656,65658.89779660033,66380.8935458446,66302.72588518042,66571.72882588342,66829.52204964789,67265.13367947098,66943.57401197092,66917.57260080865,66726.52875458487,66659.36403104197,66484.87866164831,66298.72115095778,66623.85624202447,66566.6291426702,66642.59233018276,66568.17448441216,66659.32423637372,66534.62101397967,66548.11927255774,66660.80847569843,66560.43534812235,66509.77639051678,66527.26100565071,66588.76510262096,66655.35074566986,66832.32565565783,66853.12817378907]},"price_change_percentage_24h_in_currency":0.5615684558417642}
 */


struct Coin: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
        
    }
    
    func updateHoldings(amount: Double) -> Coin {
        return Coin(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}


struct SparklineIn7D: Codable {
    let price: [Double]?
}


