//
//  ContentView.swift
//  SpoonfulTest
//
//  Created by Mya Amaya on 3/13/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0

    var body: some View {
        VStack(spacing: 0) {
            // Custom Header
            HStack {
                Text("Spoonful")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            .background(Color.white)
            .overlay(
                Divider(),
                alignment: .bottom
            )
            
            // TabView
            TabView(selection: $selectedTab) {
                CardStackView()
                    .tag(0)
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                Cookbook()
                    .tag(1)
                    .tabItem {
                        Image(systemName: "book.fill")
                        Text("Cookbook")
                    }
                
                GroceryList()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "cart.fill")
                        Text("Groceries")
                    }
                
                CalorieTracker()
                    .tag(3)
                    .tabItem {
                        Image(systemName: "fork.knife.circle.fill")
                        Text("Calories")
                    }
            }
        }
    }
}



#Preview {
    MainTabView()
}
