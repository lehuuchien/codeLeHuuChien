//
//  ContentView2.swift
//  Phase1
//
//  Created by Le Huu Chien on 15/12/2021.
//

import SwiftUI

struct ContentView2: View {
    let listContent = [ModelContetn(image: "view1"), ModelContetn(image: "view2"), ModelContetn(image: "view3")]

        var body: some View {
            TabView() {
                ForEach(0..<listContent.endIndex) { index in
                    let item = listContent[index]
                    ViewContent(image: item.image)
            }
        }.tabViewStyle(PageTabViewStyle())
    }
}
struct ModelContetn {
    var image: String?
}
struct ViewContent: View {
    var image: String?
    var body: some View {
        Image(image ?? "")
            .resizable()
            .scaledToFill()
            .frame(width: .infinity, height: 100, alignment: .center)
            .padding()
    }
}
    
struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
