//
//  OrderModel.swift
//  FoodPandaHomeWork
//
//  Created by Kourn Doch on 26/7/24.
//

import Foundation



struct Order: Identifiable {
    var id = UUID().uuidString
    var promotion : String
    var checkPromotion = true
    var name : String
    var type: String
    var image : String
    var time : Int
    var price: String
}

var orders = [
Order(promotion: "Top restaurant",checkPromotion: false, name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "coffee", time: 30,price: "$ 1,32 delivery free"),
Order(promotion: "Top restaurant", name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "chickenWing", time: 30,price: "$ 1.000"),
Order(promotion: "Top restaurant", name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "coffee", time: 30,price: "$ 1.000"),
Order(promotion: "Top restaurant",checkPromotion: false, name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "coffee", time: 30,price: "$ 1.000"),
Order(promotion: "Top restaurant", name: "13th May(TK)", type: "$$. Tea & Coffee,Cakes", image: "coffee", time: 30,price: "$ 1.000")
]

