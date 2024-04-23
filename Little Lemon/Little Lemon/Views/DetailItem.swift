//
//  DetailItem.swift
//  Little Lemon
//
//  Created by Micah Scott Jr on 4/23/24.
//

import Foundation
import SwiftUI

struct DetailItem: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    let dish: Dish
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: dish.image ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            .clipShape(Rectangle())
            .frame(minHeight: 150)
            Text(dish.title ?? "")
              
                .foregroundColor(.primaryColor1)
            Spacer(minLength: 20)
            Text(dish.descriptionDish ?? "")
             
            Spacer(minLength: 10)
            Text("$" + (dish.price ?? ""))
                .foregroundColor(.primaryColor1)
                .monospaced()
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .ignoresSafeArea()
    }
}
