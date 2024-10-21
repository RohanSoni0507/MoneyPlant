//
//  HomeView.swift
//  MoneyPlant
//
//  Created by Rohan on 21/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            // Date and Top section
            HStack {
                Text("Today, Sept 29 2024")
                    .font(.headline)
                    .padding(.leading, 16)
                Spacer()
            }
            .padding(.top, 50)

            // Plant icon
            Image(systemName: "leaf.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)

            // Daily Goal banner
            HStack {
                Text("Daily Goal")
                    .font(.headline)
                    .foregroundColor(.black)
                
                Spacer()
                
                Text("Set your income to start your daily goal")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 5)
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(
            Image("backgroundImage") // Set the background image here
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
