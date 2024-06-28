//
//  MotionAnimationView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimating = false
    
    // MARK: FUNCTION
    // 1. Random Coordinates
    func randomCoordinates() -> CGFloat{
        return CGFloat.random(in: 0...256)
    }
    
    // 2. Random Size
    func randomSize() -> CGFloat{
        return CGFloat(Int.random(in: 4...80))
    }
    
    // 3. Random Scale
    func randomScale() -> CGFloat{
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // 4. Random Speed
    func randomSpeed() -> Double{
        return Double.random(in: 0.5...1.0)
    }
    
    // 5. Random Delay
    func randomDelay() -> Double{
        return Double.random(in: 0.5...1.0)
    }
    
    var body: some View {
        ZStack{
            ForEach(0..<randomCircle, id: \.self){item in
                Circle()
                    .fill(.white)
                    .opacity(0.25)
                    .frame(width: randomSize(), height: randomSize())
                    .position(
                        x: randomCoordinates(),
                        y: randomCoordinates()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1.0)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(
                                stiffness: 0.25,
                                damping: 0.25
                            )
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAnimating = true
                        }
                    })
                    
            }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
    }
}

#Preview {
    ZStack{
        Color(.systemTeal)
            .ignoresSafeArea()
        MotionAnimationView()
    }
}
