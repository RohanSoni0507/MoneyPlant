//
//  dataModel.swift
//  Money-Plant
//
//  Created by Rohan on 20/10/24.
//

import Foundation

struct User {
    var userId: String
    var name: String
    var email: String
    var currency: String
    var joinDate: Date
}

struct Income {
    var incomeId: String
    var userId: String
    var amount: Double
    var date: Date
    var frequency: IncomeFrequency // Daily, Weekly, Monthly
}

enum IncomeFrequency: String {
    case daily, weekly, monthly
}

struct Goal {
    var goalId: String
    var userId: String
    var targetAmount: Double
    var achievedAmount: Double
    var date: Date
    var isAchieved: Bool {
        return achievedAmount >= targetAmount
    }
}

struct Transaction {
    var transactionId: String
    var userId: String
    var amount: Double
    var category: TransactionCategory
    var date: Date
    var note: String?
}

enum TransactionCategory: String {
    case food, transport, entertainment, savings, other
}

struct PlantGrowth {
    var growthId: String
    var userId: String
    var currentStage: PlantStage
    var lastUpdate: Date
    var progressPercentage: Double // e.g., 50% progress towards next growth stage
}

enum PlantStage: String {
    case seed, sprout, smallPlant, maturePlant, tree
}

struct WeeklySummary {
    var summaryId: String
    var userId: String
    var weekStartDate: Date
    var totalIncome: Double
    var totalExpenses: Double
    var totalSaved: Double
    var goalAchieved: Bool
}

struct Settings {
    var userId: String
    var notificationsEnabled: Bool
    var theme: Theme
    var currencySymbol: String
}

enum Theme: String {
    case light, dark, system
}

