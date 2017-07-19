//
//  Model.swift
//  CryptoConverter
//
//  Created by Dima Gorbachev on 18.07.17.
//  Copyright © 2017 Dima Gorbachev. All rights reserved.
//

import Foundation

private let currencies = [
    [
        "id": "btc",
        "view": "BTC",
        "request": "btc"
    ],
    [
        "id": "usd",
        "view": "USD",
        "request": "usd"
    ],
    [
        "id": "eur",
        "view": "EUR",
        "request": "eur"
    ],
    [
        "id": "eth",
        "view": "ETH",
        "request": "eth"
    ],
    [
        "id": "doge",
        "view": "DOGE",
        "request": "doge"
    ],
    [
        "id": "etc",
        "view": "ETC",
        "request": "etc"
    ],
    [
        "id": "ltc",
        "view": "LTC",
        "request": "ltc"
    ],
    [
        "id": "rur",
        "view": "RUR",
        "request": "rur"
    ],
    [
        "id": "zec",
        "view": "ZEC",
        "request": "zec"
    ],
    [
        "id": "xmr",
        "view": "XMR",
        "request": "xmr"
    ]
]

let currencyViews = currencies.map{$0["view"]}

func currencyReq(currencyView:String) -> String {
    let filtered = currencies.filter{ $0["view"]! == currencyView }
    return filtered.isEmpty ?
        "" : filtered.first!["request"]!
}
