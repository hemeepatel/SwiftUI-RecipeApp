//
//  OnboardingPage.swift
//  SpoonfulTest
//
//  Created by Mya Amaya on 4/2/25.
//

import SwiftUI

//Home Screen Color Palette
extension Color {
    static let backgroundColor = Color(UIColor(red: 217/255, green: 93/255, blue: 57/255, alpha: 1.0))
    static let buttonColor = Color(UIColor(red: 168/255, green: 61/255, blue: 45/255, alpha: 1.0))
}

struct OnboardingPage: View {
    
    @State var showLoginPage: Bool = false
    
    var body: some View {
        VStack {
            //Top Spoon Border
            Image("Spoon")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 1250, height: 160)
                .edgesIgnoringSafeArea(.all)
                .padding(.bottom, 30)
            
            //Logo Image
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .padding(.bottom, 150)
                
    
            //Button for Login Screen
            Button{
                withAnimation{
                    showLoginPage = true
                }
            } label: {
                Text("LOGIN")
                    .frame(width: 300, height: 50)
                    .font(.custom("AppFont", size: 24))
                    .background(Color.buttonColor)
                    .foregroundColor(.white)
                    .cornerRadius(100)
                    .controlSize(.large)
                    .buttonBorderShape(.capsule)
                    .padding(.bottom, 50)
                }
                
            
                //Button for Sign-Up Screen
                Button(action: {}) {
                    Text("SIGN-UP")
                    //.padding()
                        .frame(width: 300, height: 50)
                        .font(.custom("AppFont", size: 24))
                        .background(Color.buttonColor)
                        .foregroundColor(.white)
                        .cornerRadius(100)
                        .controlSize(.large)
                        .buttonBorderShape(.capsule)
                        .padding(.bottom, 50)
                    
                }
                
            
            
            //Bottom Spoon Border
            Image("Spoon2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 1250, height: 25)
                .edgesIgnoringSafeArea(.all)
                .padding(.top, 70)
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color.backgroundColor
        )
        .overlay(
            Group{
                if showLoginPage{
                    LoginPage()
                        .transition(.move(edge:.bottom))
                }
            }
        )
    }

}

#Preview {
    OnboardingPage()
}
