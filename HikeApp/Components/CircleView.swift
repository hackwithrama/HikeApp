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
            .fill(.indigo)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    CircleView()
}
