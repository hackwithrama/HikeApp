//
//  CircleView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        Circle()
            .fill(LinearGradient(colors: [.colorIndigoMedium, .colorSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 230, height: 230)
    }
}

#Preview {
    CircleView()
}
