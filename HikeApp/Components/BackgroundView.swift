//
//  BackgroundView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack{
            Color.colorGreenDark
                .cornerRadius(40)
                .offset(y: 10)
            
            Color.colorGreenLight
                .cornerRadius(40)
                .opacity(0.8)
                .offset(y: 5)
            
            LinearGradient(
                colors: [Color.colorGreenLight, Color.colorGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
            

        }
    }
}

#Preview {
    BackgroundView()
        .padding()
}
