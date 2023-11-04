//
//  ThumbnailView.swift
//  Meditation
//
//  Created by Abhilekh Borah on 04/11/23.
//

import SwiftUI

struct ThumbnailView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 12){
            
            Text("Introducing MindMitra")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(width: 320, alignment: .top)
            
            Text("Nurturing Your Mental Well-being, Where Support Meets Understanding for a Brighter Tomorrow.")
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(width: 298, alignment: .top)
        }
        
        .padding(.horizontal, 0)
        .padding(.top, 20)
        .padding(.bottom, 24)
        .frame(width: 358, alignment: .center)
        .background(
            LinearGradient(
                stops: [
                    Gradient.Stop(color: .green.opacity(0.8), location: 0.00),
                    Gradient.Stop(color: .green.opacity(0.6), location: 0.51),
                    Gradient.Stop(color: .green.opacity(0.8), location: 1.00),
                    Gradient.Stop(color: .green.opacity(0.65), location: 0.8)
                ],
                startPoint: UnitPoint(x: 0, y: 0),
                endPoint: UnitPoint(x: 1, y: 1)
            )
        )
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .inset(by: 0.6)
                .stroke(.linearGradient(colors: [.white.opacity(0.2), .white
                    .opacity(0.4),.white.opacity(0.3), .white.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing))
        )
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

#Preview {
    ThumbnailView()
}
