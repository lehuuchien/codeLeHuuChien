//
//  CommerceView.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 30/12/2021.
//

import SwiftUI

struct CommerceView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem() {
                        Image(systemName: "house")
                        Text("Home")
                }
            Text("menu")
                .tabItem {
                    Image(systemName: "rectangle.grid.2x2.fill")
                    Text("Menu")
                }
            MyCartView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Cart")
                }
            Text("User")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("User")
                }
        }
        .accentColor(.orange)
    }
}

struct CommerceView_Previews: PreviewProvider {
    static var previews: some View {
        CommerceView()
    }
}
