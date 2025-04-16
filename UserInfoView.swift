//
//  UserInfoView.swift
//  SpoonfulTest
//
//  Created by Mya Amaya on 3/13/25.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Ground Turkey Pasta")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Button{
                    print("DEBUG: Show recipe here..")
                } label:{
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
                
                
            
            }
            
            Text("Time: 30mins")
                .fontWeight(.bold)
                .font(.subheadline)
                .lineLimit(2)
            
            Text("Servings: 6")
                .fontWeight(.bold)
                .font(.subheadline)
                .lineLimit(2)
        }
        .frame(width: SizeConstants.cardWidth)
        .foregroundStyle(.white)
        .padding()
        .background( LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    UserInfoView()
}
