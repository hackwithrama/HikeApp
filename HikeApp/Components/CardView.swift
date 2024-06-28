//
//  CardView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct CardView: View {
    // MARK: PROPERTIES
    @State private var randomNumber = 1
    @State private var imageNumber = 1
    @State private var showingSettings = false
    
    // MARK: FUNCTION
    func randomImage(){
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while imageNumber == randomNumber
        
        return imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack{
            BackgroundView()
            VStack {
                // MARK: HEADER
                VStack(alignment: .leading){
                    HStack(alignment: .center){
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        Color.colorGrayLight,
                                        Color.colorGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                        Spacer()
                        Button{
                            showingSettings = true
                        }label: {
                            HeaderButtonView()
                        }
                        .sheet(isPresented: $showingSettings){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.large])
                        }
                        
                    }
                    
                    Text("Fun and enjoyable activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(Color.colorGrayMedium)
                }//: Header
                .padding(.horizontal, 30)
                
                // MARK: MAIN CONTENT
                ForegroundView(imgNum: $imageNumber)
                
                // MARK: FOOTER
                Button{
                    randomImage()
                }label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.colorGreenLight, .colorGreenMedium], startPoint: .top, endPoint: .bottom))
                }
                .buttonStyle(GradientButton())
                
                
            }//: VStack
        }//: ZStack
        .frame(width: 310, height: 620)
    }
}

#Preview {
    CardView()
}
