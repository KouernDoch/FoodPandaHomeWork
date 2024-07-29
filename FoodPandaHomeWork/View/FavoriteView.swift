//
//  FavoriteView.swift
//  FoodPandaHomeWork
//
//  Created by Kourn Doch on 26/7/24.
//

import SwiftUI

struct FavoriteView: View {
    enum Tab {
               case restaurants
               case shop
           }
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedTab: Tab = .restaurants
    
    var body: some View {
        VStack {
            Text(" ")
            ZStack(alignment: .bottom){
                Rectangle()
                    .fill(.gray)
                    .frame(width: 400, height: 0.3)
                HStack{
                    Button(action: {
                        selectedTab = .restaurants
                    }){
                        ZStack(alignment: .bottom){
                            Text("Restaurants")
                                .foregroundColor(selectedTab == .restaurants ? .red : .black)
                                .padding(.horizontal, 30)
                                .padding()
                            if(selectedTab == .restaurants){
                                Rectangle()
                                    .fill(.red)
                                    .frame(width: 105.0, height: 3.0)
                            }else{
                                Rectangle()
                                    .fill(.red)
                                    .frame(width: 0, height: 0)
                            }
                            
                        }
                        
                    }
                    
                    Button(action: {
                        selectedTab = .shop
                    }){
                        ZStack(alignment: .bottom){
                            Text("Shop")
                                .foregroundColor(selectedTab == .shop ? .red : .black)
                                .padding(.horizontal, 30)
                                .padding()
                            if(selectedTab == .shop){
                                Rectangle()
                                    .fill(.red)
                                    .frame(width: 50.0, height: 3.0)
                            }else{
                                Rectangle()
                                    .fill(.red)
                                    .frame(width: 0, height: 0)
                            }
                        }
                    }
                    
                }
                
            }
             
                   
   }
        
        HStack{
            Capsule()
                .fill(.pink)
                .frame(width: 100,height: 40)
            Capsule()
                .fill(.pink)
                .frame(width: 100,height: 40)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 70,height: 30)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 70,height: 30)
            Spacer()
        }
        .padding([.top, .leading], 10.0)
        
        Image("paupau")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding([.top, .leading, .trailing], 70.0)
        VStack{
            Text("No favourites saved")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 20.0)
            Text("To take ordering even faster, you'll find all your faves here. just look for the heart icon!")
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom, .trailing], 10.0)
            
            Button("Let's find some favourites"){
                
            }
            .frame(width: 300,height:40)
            .background(.pink)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
            
        }
        
        
        
        Spacer()
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                       Image(systemName: "arrow.left")
                            .foregroundColor(.pink)
                        Text("Favorite")
                            .foregroundColor(.black)
                    }
                })
            }
        }

#Preview {
    FavoriteView()
}
