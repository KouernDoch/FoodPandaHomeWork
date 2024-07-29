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
        NavigationView{
            VStack{
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
                            NavigationLink(destination: FavoriteView()){
                                Image(systemName: "heart")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25,height: 25)
                                    .foregroundColor(Color.white)
                                    .padding()
                            }
                        
                        Image(systemName: "cart.badge.questionmark.ar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30,height: 30)
                            .foregroundColor(Color.white)
                            .padding(10)
                            .accessibilityLabel("Favorite")
                        
                        
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
                        CardView(title: "Food delivery", subtitle: "Oder food you love", fiweigth: 100, fiheight: 100, image: "hero-home", fweigth: 380, fheight: 150)
                        
                        HStack{
                            CardView(title: "Groceries", subtitle: "Supermarket Marts, Shops, &more", fiweigth: 70, fiheight: 70, image: "hero-home", fweigth: 200, fheight: 220)
                            
                            
                            VStack{
                                CardView(title: "Pick-Up", subtitle: "Up to 50% off", fiweigth: 35, fiheight: 35, image: "pick-up", fweigth: 170, fheight: 100)
                                
                                CardView(title: "Pandasend", subtitle: "send parcels", fiweigth: 40, fiheight: 40, image: "pic4", fweigth: 170, fheight: 100)
                                
                                
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
                                if order.checkPromotion {
                                    OrderViewCard(order: order, setColor: .black)
                                }else{
                                    OrderViewCard(order: order, setColor: .red)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


