//
//  WeeklyAdjustedCrypto.swift
//  SampleApp
//
//  Created by Musa Kokcen on 17.01.2021.
//

import Foundation


struct WeeklyAdjustedCryptoModel: Codable {
    let metaData: WeeklyAdjustedMetaData
    let timeSeriesDigitalCurrencyWeekly: [String: TimeSeriesDigitalCurrencyWeekly]
    
    enum CodingKeys: String, CodingKey {
        case metaData = "Meta Data"
        case timeSeriesDigitalCurrencyWeekly = "Time Series (Digital Currency Weekly)"
    }
}

// MARK: - MetaData
struct WeeklyAdjustedMetaData: Codable {
    
    let information, digitalCurrencyCode, digitalCurrencyName, marketCode: String
    let marketName, lastRefreshed, timeZone: String

    enum CodingKeys: String, CodingKey {
        case information = "1. Information"
        case digitalCurrencyCode = "2. Digital Currency Code"
        case digitalCurrencyName = "3. Digital Currency Name"
        case marketCode = "4. Market Code"
        case marketName = "5. Market Name"
        case lastRefreshed = "6. Last Refreshed"
        case timeZone = "7. Time Zone"
    }
}

// MARK: - TimeSeriesDigitalCurrencyWeekly
struct TimeSeriesDigitalCurrencyWeekly: Codable {
    let openCNY, openUSD, highCNY,highUSD: String?
    let lowCNY, lowUSD, closeCNY, closeUSD: String?
    let volume, marketCapUSD: String?

    enum CodingKeys: String, CodingKey {
        case openCNY = "1a. open (CNY)"
        case openUSD = "1b. open (USD)"
        case highCNY = "2a. high (CNY)"
        case highUSD = "2b. high (USD)"
        case lowCNY = "3a. low (CNY)"
        case lowUSD = "3b. low (USD)"
        case closeCNY = "4a. close (CNY)"
        case closeUSD = "4b. close (USD)"
        case volume = "5. volume"
        case marketCapUSD = "6. market cap (USD)"
    }
}

