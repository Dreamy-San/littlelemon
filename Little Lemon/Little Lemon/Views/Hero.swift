//
//  Hero.swift
//  Little Lemon
//
//  Created by Micah Scott Jr on 4/23/24.
//

import Foundation
import SwiftUI

struct Hero: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Little Lemon")
                        .foregroundColor(Color.primaryColor2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Chicago")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer(minLength: 5)
                    
                    Text("""
                     We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.
                     """)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                Image("hero-image")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(maxWidth: 120, maxHeight: 140)
                    .clipShape(Rectangle())
                    .cornerRadius(16)
            }
        }
    }
}
