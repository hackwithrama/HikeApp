//
//  HeaderButtonView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct HeaderButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(colors: [.colorGreenLight, .colorGreenMedium], startPoint: .top, endPoint: .bottom))
                .overlay(
                    Circle()
                        .stroke(.colorGrayMedium,lineWidth: 4)
                )
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 32))
                .foregroundStyle(LinearGradient(colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom))
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    HeaderButtonView()
        .padding()
}
