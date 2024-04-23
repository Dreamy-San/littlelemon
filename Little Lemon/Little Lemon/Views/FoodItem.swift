//
//  FoodItem.swift
//  Little Lemon
//
//  Created by Micah Scott Jr on 4/23/24.
//

import Foundation
import SwiftUI

struct FoodItem: View {
    
    let dish:Dish
    
    var body: some View {
        HStack {
            VStack {
                Text(dish.title ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
                 
                    .foregroundColor(.black)
                Spacer(minLength: 10)
                Text(dish.descriptionDish ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
               
                    .foregroundColor(.primaryColor1)
                    .lineLimit(2)
                Spacer(minLength: 5)
                Text("$" + (dish.price ?? ""))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                    .foregroundColor(.primaryColor1)
                    .monospaced()
            }
            AsyncImage(url: URL(string: dish.image ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(maxWidth: 90, maxHeight: 90)
            .clipShape(Rectangle())
        }
        .padding(.vertical)
        .frame(maxHeight: 150)
    }
}
