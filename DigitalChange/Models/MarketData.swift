//
//  MarketData.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/21/24.
//

import Foundation


// JSON Data
/*
 url
 https://api.coingecko.com/api/v3/global
 
 JSON Response
 
 {"data":{"active_cryptocurrencies":14904,"upcoming_icos":0,"ongoing_icos":49,"ended_icos":3376,"markets":1158,"total_market_cap":{"btc":38137414.43309039,"eth":737098608.2592744,"ltc":35129579239.98397,"bch":6593180978.848716,"bnb":4302236420.202047,"eos":4283092398677.699,"xrp":4348125257981.7812,"xlm":24809433932173.254,"link":176988932948.45157,"dot":410275210706.1102,"yfi":436953739.50448674,"usd":2568334900956.7554,"aed":9433494091214.162,"ars":2.37577706091773e+15,"aud":3838497221220.199,"bdt":301578625216569.56,"bhd":967296563737.938,"bmd":2568334900956.7554,"brl":14383959612808.32,"cad":3522612575081.7456,"chf":2279980236621.64,"clp":2.418736430213656e+15,"cny":18671794729955.633,"czk":59559044269461.85,"dkk":17599604800527.71,"eur":2358635492963.4404,"gbp":1987457164742.2683,"gel":6960182444923.005,"hkd":20059337660197.51,"huf":921486979649007.0,"idr":4.164054216595692e+16,"ils":9363157671616.58,"inr":215047965424559.8,"jpy":404274947597379.06,"krw":3569471845349700.5,"kwd":784895987406.8895,"lkr":779237239327982.1,"mmk":8.3393834234066e+15,"mxn":46259564068582.64,"myr":12038684597999.658,"ngn":4.273617436672658e+15,"nok":27979096254146.156,"nzd":4271094710262.8804,"php":149986651448368.03,"pkr":713778945531154.4,"pln":10105406457993.057,"rub":225714604425109.78,"sar":9633464646602.65,"sek":27378398677501.016,"sgd":3454957497120.7427,"thb":93342538874747.05,"try":84892457648774.05,"twd":84230597744797.45,"uah":106492464934343.45,"vef":257167373632.80005,"vnd":6.504592216857556e+16,"zar":46985632345083.26,"xdr":1936008280006.3008,"xag":87899489834.16324,"xau":1069711486.2484885,"bits":38137414433090.39,"sats":3.813741443309039e+15},"total_volume":{"btc":1056076.8055208132,"eth":20411261.621576402,"ltc":972785763.6532037,"bch":182574136.4449104,"bnb":119134769.95703362,"eos":118604645998.79504,"xrp":120405494203.33794,"xlm":687006922816.8722,"link":4901063947.286369,"dot":11361077837.802895,"yfi":12099842.536149578,"usd":71120681829.87814,"aed":261226264361.14246,"ars":65788493698897.84,"aud":106293201666.79845,"bdt":8351121749242.956,"bhd":26785755673.496056,"bmd":71120681829.87814,"brl":398311378588.233,"cad":97545926767.17862,"chf":63135749518.79231,"clp":66978096983956.04,"cny":517047356903.2147,"czk":1649270831464.415,"dkk":487356961463.1044,"eur":65313820399.83233,"gbp":55035388341.09647,"gel":192736905517.6061,"hkd":555470305261.8062,"huf":25517226069535.824,"idr":1.153083170541906e+15,"ils":259278553368.54993,"inr":5954970249956.618,"jpy":11194922402507.967,"krw":98843523607164.72,"kwd":21734835970.619923,"lkr":21578137550361.145,"mmk":230928853901614.78,"mxn":1280990160778.8516,"myr":333367527975.27966,"ngn":118342271431576.53,"nok":774779177683.3271,"nzd":118272413710.8148,"php":4153334096894.6426,"pkr":19765508486870.773,"pln":279832430417.38403,"rub":6250343971767.463,"sar":266763720648.41663,"sek":758145045892.8651,"sgd":95672465766.41595,"thb":2584781683273.0474,"try":2350787456863.876,"twd":2332459657156.315,"uah":2948920996655.655,"vef":7121313871.625703,"vnd":1801209933003271.2,"zar":1301095977532.162,"xdr":53610698842.68031,"xag":2434056262.3571157,"xau":29621763.982144248,"bits":1056076805520.8132,"sats":105607680552081.33},"market_cap_percentage":{"btc":51.73119440127002,"eth":16.316315366445693,"usdt":4.439658707713465,"bnb":3.5762935016895536,"sol":3.207766555777382,"steth":1.3270455068544467,"usdc":1.3237120994422513,"xrp":1.2858296060208505,"doge":0.757279449386865,"ton":0.6951596886318798},"market_cap_change_percentage_24h_usd":-0.3415482559113247,"updated_at":1721592367}}
 */

struct GlobalData: Codable {
    let data: MarketData?
}


struct MarketData: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
