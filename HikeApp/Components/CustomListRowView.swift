//
//  CustomListRowView.swift
//  HikeApp
//
//  Created by Ramachandran Varadaraju on 28/06/24.
//

import SwiftUI

struct CustomListRowView: View {
    @State var contentName: String? = nil
    @State var labelName: String
    @State var tintColor: Color
    @State var imageName: String
    @State var linkLabelName: String? = nil
    @State var linkDestination: String? = nil
    
    var body: some View {
        LabeledContent{
            if contentName != nil {
                Text(contentName!)
            }else if linkLabelName != nil && linkDestination != nil{
                Link(linkLabelName!, destination: URL(string: linkDestination!)!)
            }
            else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(tintColor)
                    Image(systemName: imageName)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                
                Text(labelName)
            }
        }
    }
}

#Preview {
    CustomListRowView(
        contentName: nil,
        labelName: "Website",
        tintColor: .pink,
        imageName: "globe",
        linkLabelName: "Hackwithrama",
        linkDestination: "https://hackwithrama.com"
    )
    .padding()
}
