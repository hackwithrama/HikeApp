//
//  CircleView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct CircleView: View {
    @State private var isAnimatingGradient = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [.colorIndigoMedium, .colorSalmonLight], startPoint: isAnimatingGradient ? .topLeading : .bottomLeading, endPoint: isAnimatingGradient ? .bottomTrailing : .topTrailing))
                .frame(width: 250, height: 250)
                .onAppear{
                    withAnimation(.easeInOut(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimatingGradient.toggle()
                    }
            }
            
            MotionAnimationView()
        }
    }
}

#Preview {
    CircleView()
}
