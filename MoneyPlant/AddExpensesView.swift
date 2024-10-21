//
//  AddExpensesView.swift
//  MoneyPlant
//
//  Created by Rohan on 21/10/24.
//

import SwiftUI

struct AddExpensesView: View {
    @State private var balance: Double = 0.0
    @State private var income: Double = 0.0
    @State private var expenses: Double = 0.0
    
    var body: some View {
        VStack {
            // Top section with balance
            Text("Account Balance")
                .font(.title2)
                .padding(.top, 50)

            Text("₹ \(balance, specifier: "%.2f")")
                .font(.largeTitle)
                .bold()
                .padding(.top, 10)
            
            // Income and expenses section
            HStack {
                VStack {
                    Text("Income")
                        .font(.headline)
                    Text("₹ \(income, specifier: "%.2f")")
                        .foregroundColor(.green)
                        .bold()
                }
                .padding()
                
                VStack {
                    Text("Expenses")
                        .font(.headline)
                    Text("₹ \(expenses, specifier: "%.2f")")
                        .foregroundColor(.red)
                        .bold()
                }
                .padding()
            }
            
            Spacer()
            
            // Button to add expense or income
            Button(action: {
                // Action to add expenses or income
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 50)
        }
        .padding()
    }
}

struct AddExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpensesView()
    }
}
