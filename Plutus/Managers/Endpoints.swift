//
//  Endpoints.swift
//  Plutus
//
//  Created by Musa Kokcen on 17.01.2021.
//

import Foundation

enum Endpoint {
    case dailyAdjustedStock(symbol: String), weeklyAdjustedStock(symbol: String), monthlyAdjustedStock(symbol: String), searchStock(keyword: String)
    case dailyAdjustedCrypto(symbol: DigitalCurrency, market: PhysicalCurrency = .USD), weeklyAdjustedCrypto(symbol: DigitalCurrency, market: PhysicalCurrency = .USD), monthlyAdjustedCrypto(symbol: DigitalCurrency, market: PhysicalCurrency = .USD)

    var function: String {
        switch self {
        case .dailyAdjustedStock:
            return "TIME_SERIES_DAILY_ADJUSTED"
        case .weeklyAdjustedStock:
            return "TIME_SERIES_WEEKLY_ADJUSTED"
        case .monthlyAdjustedStock:
            return "TIME_SERIES_MONTHLY_ADJUSTED"
        case .searchStock:
            return "SYMBOL_SEARCH"
        case .dailyAdjustedCrypto:
            return "DIGITAL_CURRENCY_DAILY"
        case .weeklyAdjustedCrypto:
            return "DIGITAL_CURRENCY_WEEKLY"
        case .monthlyAdjustedCrypto:
            return "DIGITAL_CURRENCY_MONTHLY"
        }
    }
    
    private var apiKey: String {
        return "6SX5O39UR4QV8V4L"
    }

    var params: [String : Any] {
        switch self {
        case .dailyAdjustedStock(let symbol), .weeklyAdjustedStock(let symbol), .monthlyAdjustedStock(let symbol):
                return [
                    "function": function,
                    "symbol": symbol,
                    "apikey": "6SX5O39UR4QV8V4L"
                ]
        case .searchStock(let keyword):
            return [
                "function": function,
                "keywords": keyword,
                "apikey": apiKey
            ]
        case .dailyAdjustedCrypto(let symbol, let market), .weeklyAdjustedCrypto(let symbol, let market), .monthlyAdjustedCrypto(let symbol, let market):
            return [
                "function": function,
                "symbol": symbol.rawValue,
                "market": market,
                "apikey": apiKey
            ]
        }
    }
}
