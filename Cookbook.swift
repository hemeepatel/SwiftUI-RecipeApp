//
//  Cookbook.swift
//  SpoonfulTest
//
//  Created by Mya Amaya on 4/3/25.
//

import SwiftUI

struct Cookbook: View {
    @StateObject private var viewModel = FoodViewModel() 
    @State private var searchText = ""
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.foodlist, id: \.id) { item in
                        VStack {
                            Image(item.imageName)  // Display the image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 110, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text(item.name)
                                .font(.title)
        
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("My Cookbook")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .scrollIndicators(.never)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search recipes")
        }
    }
}

#Preview {
    Cookbook()
}
