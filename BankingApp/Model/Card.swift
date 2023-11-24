//
//  Card.swift
//  BankingApp
//
//  Created by minho on 2023/11/23.
//

import SwiftUI

/// Card Model

struct Card: Identifiable, Hashable {
    var id: UUID = .init()
    var cardName: String
    var cardColor: Color
    var cardBalance: String
    var isFirstBlankCard: Bool = false
    var exepnses: [Expense] = []
}

/// SampleCard
var sampleCard: [Card] = [
    .init(cardName: "", cardColor: .clear, cardBalance: "", isFirstBlankCard: true),
    .init(cardName: "Saitama", cardColor: Color("Card 1"), cardBalance: "$1024.9", exepnses: [
        Expense(amountSpent: "$18", product: "Youtube", productIcon: "Youtube", spendType: "Streaming"),
        Expense(amountSpent: "$128", product: "Amazon", productIcon: "Amazon", spendType: "Groceries"),
        Expense(amountSpent: "$28", product: "Apple", productIcon: "Apple", spendType: "Apple Pay")
    ]),
    .init(cardName: "Saitama", cardColor: Color("Card 2"), cardBalance: "$2439.5", exepnses: [
        Expense(amountSpent: "$9", product: "Patreon", productIcon: "Patreon", spendType: "Membership"),
        Expense(amountSpent: "$10", product: "Dribble", productIcon: "Dribble", spendType: "Mebership"),
        Expense(amountSpent: "$100", product: "Instagram", productIcon: "Instagram", spendType: "Ad Publish")
    ]),
    .init(cardName: "Saitama", cardColor: Color("Card 3"), cardBalance: "$459.78", exepnses: [
        Expense(amountSpent: "$55", product: "Netflix", productIcon: "Netflix", spendType: "Movies"),
        Expense(amountSpent: "$348", product: "Photoshop", productIcon: "Photoshop", spendType: "Editing"),
        Expense(amountSpent: "$99", product: "Figma", productIcon: "Figma", spendType: "Pro Meber")
    ])
]



