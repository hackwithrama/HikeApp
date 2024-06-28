//
//  SettingsView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct SettingsView: View {
    private let alternateAppIcons = [
        "AppIcon-Mushroom",
        "AppIcon-Map",
        "AppIcon-MagnifyingGlass",
        "AppIcon-Campfire",
        "AppIcon-Camera",
        "AppIcon-Backpack"
    ]
    
    var body: some View {
        List{
            
            // MARK: Section Header
            Section{
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 66))
                        .fontWeight(.black)
                    VStack(spacing: -10){
                        Text("Hike")
                            .fontWeight(.black)
                            .font(.system(size: 66))
                        Text("Editor's Choice")
                            
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 66))
                        .fontWeight(.black)
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.colorGreenMedium, .colorGreenDark], startPoint: .top, endPoint: .bottom))
                
                VStack(spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. Hike that you hope to do again some day. \nFind the best day hikes in the app")
                        .font(.footnote)
                    Text("Dust off the boots, it's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.colorGreenDark)
                }
                .padding(.bottom, 16)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                
            }
            .listRowSeparator(.hidden)
            
            // MARK: Section Icons
            Section("Alternate Icons"){
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 12){
                        ForEach(0..<alternateAppIcons.count, id: \.self){icon in
                            Button{
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[icon]){error in
                                    if error != nil{
                                        print("Failed to update the app icon \(String(describing: error?.localizedDescription))")
                                    }else{
                                        print("Success you have changed app icons to \(alternateAppIcons[icon])")
                                    }
                                }
                            }label: {
                                Image("\(alternateAppIcons[icon])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                            .buttonStyle(.borderless)
                        }
                    }
                }
                .padding()
            }
            .listRowSeparator(.hidden)
            
            // MARK: Section About
            Section(
                header: Text("About the app"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All rights reserved")
                    Spacer()
                }
            ){
                CustomListRowView(
                    contentName: "Hike",
                    labelName: "Application",
                    tintColor: .blue,
                    imageName: "apps.iphone"
                )
                
                CustomListRowView(
                    contentName: "iOS, iPadOS",
                    labelName: "Compatiblity",
                    tintColor: .red,
                    imageName: "info.circle"
                )
                
                CustomListRowView(
                    contentName: "Swift",
                    labelName: "Technology",
                    tintColor: .orange,
                    imageName: "swift"
                )
                
                CustomListRowView(
                    contentName: "1.0.0",
                    labelName: "Version",
                    tintColor: .purple,
                    imageName: "gear"
                )
                
                CustomListRowView(
                    contentName: "Ramachandran",
                    labelName: "Developer",
                    tintColor: .mint,
                    imageName: "ellipsis.curlybraces"
                )
                
                CustomListRowView(
                    contentName: "Jony Ive",
                    labelName: "Designer",
                    tintColor: .pink,
                    imageName: "paintpalette"
                )
                
                CustomListRowView(
                    labelName: "Website",
                    tintColor: .indigo,
                    imageName: "globe",
                    linkLabelName: "Hackwithrama",
                    linkDestination: "https://hackwithrama.com"
                )
            }
            .listRowSeparator(.hidden)
            
        }//: List
    }
}

#Preview {
    SettingsView()
}
