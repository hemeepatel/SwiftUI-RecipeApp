//
//  GroceryList.swift
//  SpoonfulTest
//
//  Created by Mya Amaya on 4/3/25.
//

import SwiftUI

struct GroceryList: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Eggs")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Parmesan Cheese")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Cilantro")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Red Bell Pepper")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Ribeye Steak")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Eggs")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Olive Oil")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Chicken Breasts")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Chicken Broth")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("White Wine")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Unsalted Butter")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Heirloom Tomatoes")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Garlic")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .padding()
                    
                    VStack(alignment: .leading){
                        Text("Onion")
                            .font(.system(size: 25))
                    }
                    Spacer()
                    
                }
                Divider()
                    .background(Color.black.opacity(100))
                
                
                
                
        
    
            }
            .navigationTitle("Grocery List")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .scrollIndicators(.never)
        }
    }
}

#Preview {
    GroceryList()
}
