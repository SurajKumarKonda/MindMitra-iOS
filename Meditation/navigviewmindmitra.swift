//
//  NavigationView.swift
//  AcharyaGPT
//
//  Created by Abhilekh Borah on 21/10/23.
//

import SwiftUI

struct NavigViewmindmitra: View {
    @Binding var hasScrolled: Bool
    var body: some View {
        ZStack{
            Color.clear.background(.ultraThinMaterial)
                .blur(radius: 0).opacity(hasScrolled ? 1 : 0)
            HStack{
                
                Image(hasScrolled ? "mindmitra" : "").resizable()
                    .frame(width: 30, height: 30)
                
                Text(hasScrolled ? "MindMitra" : "")
                    .font(.caption).fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
        }
        .frame(height: hasScrolled ? 44 : 70)
        .frame(maxHeight: .infinity, alignment: .top)

    }
       
}

#Preview {
    NavigViewmindmitra(hasScrolled: .constant(false))
}
