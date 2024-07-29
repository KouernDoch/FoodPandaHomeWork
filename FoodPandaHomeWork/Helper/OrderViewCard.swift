//
//  OrderView.swift
//  FoodPandaHomeWork
//
//  Created by Kourn Doch on 26/7/24.
//

import Foundation
import SwiftUI

struct OrderViewCard: View {
    var order : Order
    var setColor: Color
    var body: some View {
        VStack(alignment: .leading){
            ZStack(alignment: .topLeading){
                Image(order.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height:150 )
                .cornerRadius(20)
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(setColor)
                 .frame(width: 150, height: 30)
                
                 .overlay(
                      Text(order.promotion)
                        .foregroundColor(.white)
                 )
                 .padding(.top)
                
                VStack{
                    Spacer()
                    Capsule()
                        .fill(.white)
                        .frame(width: 100.0, height: 40.0)
                        .overlay(
                            Text("\(order.time) min")
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .bold, design: .default))
                                .multilineTextAlignment(.center)
                        )
                        .padding(.bottom, 15)
                    
                }
            }
            Text(order.name)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .font(.headline)
                .padding(.leading, 14.0)
            Text(order.type)
                .font(.caption)
                .foregroundColor(Color.gray)
                .padding(.leading, 14.0)
            Text(order.price)
                .font(.footnote)
                .padding(.leading, 14.0)
        }
    }
}
