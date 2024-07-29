//
//  CardView.swift
//  FoodPandaHomeWork
//
//  Created by Kourn Doch on 26/7/24.
//

import SwiftUI

struct CardView : View {
    var title: String
    var subtitle: String
    var fiweigth : CGFloat
    var fiheight : CGFloat
    var image: String
    var fweigth : CGFloat
    var fheight : CGFloat
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.999))
            .frame(width: fweigth,height: fheight)
            .overlay(
                HStack {
                    VStack(alignment: .leading){
                        Text(title)
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Text(subtitle)
                            .font(.caption)
                            .fontWeight(.light)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.512))
                        Spacer()
                    }
                    .padding()
                    Spacer()
                    
                    VStack{
                        Spacer()
                        
                          Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: fiweigth,height: fiheight)
                    }
                    .padding(5)
                    
                }
            )
    }
}
