//
//  ContentView.swift
//  FoodPandaHomeWork
//
//  Created by Kourn Doch on 25/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var txt = ""

    var body: some View {
        VStack{
            HStack{
                Image(systemName: "highlighter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25,height: 25)
                    .foregroundColor(.white)
                    .padding()
                Text("12 Saint 323 \n Phnom Penh")
                    .font(.footnote)
                    .foregroundColor(.white)
                
                Spacer()
                
                    
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25,height: 25)
                        .foregroundColor(Color.white)
                        .padding()
                })
                
                Image(systemName: "cart.badge.questionmark.ar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30,height: 30)
                    .foregroundColor(Color.white)
                    .padding(10)
    
                
            }
            .padding(5)
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search for shop & Restaurants",text: $txt)
                }
                .padding(8)
                .background()
                .cornerRadius(50)
            }
            .padding(10)
        }
        .background(Color(red: 0.955, green: 0.174, blue: 0.515))
        
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.999))
                    .frame(height: 150)
                    .overlay(
                        HStack {
                            VStack(alignment: .leading){
                                Text("Food delivery")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Text("Oder food you love")
                                    .font(.subheadline)
                                    .fontWeight(.light)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.512))
                                Spacer()
                            }
                            .padding()
                            Spacer()
                            
                            VStack{
                                Spacer()
                                
                                Image("hero-home")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100,height: 100)
                            }
                            .padding(5)
                            
                        }
                    )
                
                
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.999))
                        .frame(height: 220)
                        .overlay(
                            HStack {
                                VStack(alignment: .leading){
                                    Text("Groceries")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    Text("Supermarket Marts, Shops, &more")
                                        .font(.caption)
                                        .fontWeight(.light)
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.512))
                                    Spacer()
                                }
                                .padding()
                                Spacer()
                                
                                VStack{
                                    Spacer()
                                    
                                    Image("hero-home")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 70,height: 70)
                                }
                                .padding(5)
                                
                            }
                        )
                    
                    
                    
                    VStack{
                        
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.999))
                            .frame(width: 170,height: 100)
                            .overlay(
                                HStack {
                                    VStack(alignment: .leading){
                                        Text("Pick-Up")
                                            .font(.subheadline)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        Text("Up to 50% off")
                                            .font(.caption)
                                            .fontWeight(.light)
                                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.512))
                                        Spacer()
                                    }
                                    .padding()
                                    Spacer()
                                    
                                    VStack{
                                        Spacer()
                                        Image("pick-up")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 40,height: 40)
                                    }
                                    .padding(5)
                                    
                                }
                            )
                        
                        
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.999))
                            .frame(width: 170,height: 100)
                            .overlay(
                                HStack {
                                    VStack(alignment: .leading){
                                        Text("Pandasend")
                                            .font(.subheadline)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        Text("send parcels")
                                            .font(.caption)
                                            .fontWeight(.light)
                                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.512))
                                        Spacer()
                                    }
                                    .padding()
                                    Spacer()
                                    
                                    VStack{
                                        Spacer()
                                        Image("pic4")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 40,height: 40)
                                    }
                                    .padding(5)
                                    
                                }
                            )
                        
                    }
                }
            }
            .padding(8)
            .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.946))
            
            
            
            HStack{
                Text("Order it again")
                    .font(.title)
                    .fontWeight(.bold).multilineTextAlignment(.leading)
                    .padding(8)
                Spacer()
            }
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(orders) { order in
                        OrderViewCard(order: order)
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}



struct Order: Identifiable {
    var id = UUID().uuidString
    var promotion : String
    var checkPromotion = false
    var name : String
    var type: String
    var image : String
    var time : Int
    var price: String
}

var orders = [
Order(promotion: "Top restaurant", name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "coffee", time: 30,price: "$ 1,32 delivery free"),
Order(promotion: "Top restaurant", name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "chickenWing", time: 30,price: "$ 1.000"),
Order(promotion: "Top restaurant", name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "coffee", time: 30,price: "$ 1.000"),
Order(promotion: "Top restaurant", name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "coffee", time: 30,price: "$ 1.000"),
Order(promotion: "Top restaurant", name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "coffee", time: 30,price: "$ 1.000")
]


struct OrderViewCard: View {
    var order : Order
    var body: some View {
        VStack(alignment: .leading){
            ZStack(alignment: .topLeading){
                Image(order.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height:150 )
                .cornerRadius(20)
                
                RoundedRectangle(cornerRadius: 10)
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
