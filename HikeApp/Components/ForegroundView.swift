//
//  ForegroundView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct ForegroundView: View {
    var body: some View {
        ZStack{
            CircleView()
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    ForegroundView()
}
