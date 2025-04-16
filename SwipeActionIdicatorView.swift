//
//  SwipeActionIdicatorView.swift
//  SpoonfulTest
//
//  Created by Mya Amaya on 3/13/25.
//

import SwiftUI

struct SwipeActionIdicatorView: View {
    @Binding var xOffset: CGFloat
   
    var body: some View {
        ZStack {
            if xOffset > 0 {
                Text("YES")
                    .font(.system(size: 80))
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                        .fill(Color.green)
                        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                        )
                    .opacity(Double(min(xOffset / SizeConstants.screenCutoff, 1)))
                    
            } else if xOffset < 0 {
                Text("NO")
                    .font(.system(size: 80))
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                        .fill(Color.red)
                        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                        )
                    .opacity(Double(min(-xOffset / SizeConstants.screenCutoff, 1)))
                    
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    SwipeActionIdicatorView(xOffset: .constant(80))
}
