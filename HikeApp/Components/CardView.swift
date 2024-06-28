//
//  CardView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack{
            BackgroundView()
            ForegroundView()
        }
        .frame(width: 310, height: 620)
    }
}

#Preview {
    CardView()
}
