//
//  Expense.swift
//  BankingApp
//
//  Created by minho on 2023/11/23.
//

import SwiftUI

struct Expense: Identifiable, Hashable, Equatable {
    var id = UUID().uuidString
    var amountSpent: String
    var product: String
    var productIcon: String
    var spendType: String
}
