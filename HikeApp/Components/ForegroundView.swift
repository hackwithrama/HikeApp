//
//  ForegroundView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct ForegroundView: View {
    @Binding var imgNum: Int
    
    var body: some View {
        ZStack{
            CircleView()
            Image("image-\(imgNum)")
                .resizable()
                .scaledToFit()
                .animation(.default, value: imgNum)
        }
    }
}

#Preview {
    ForegroundView(imgNum: .constant(1))
}
