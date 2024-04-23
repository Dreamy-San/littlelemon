//
//  Main Screen.swift
//  Little Lemon
//
//  Created by Micah Scott Jr on 4/23/24.
//

import Foundation
import SwiftUI

struct MainScreen: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        NavigationStack {
            VStack {
                Header()
                Menu()
            }
        }
    }
}
