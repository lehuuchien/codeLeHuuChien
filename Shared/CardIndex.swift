//
//  CardIndex.swift
//  Phase1
//
//  Created by Le Huu Chien on 17/12/2021.
//

import SwiftUI

struct CardIndex: View {
    var body: some View {
        VStack{
            ItemCardIdeas()
        }
    }
}

struct ModelCardIndex {
    var name: String?
    var number: String?
    var data: String?
    var image: String?
    var subimage: String?
}

struct ItemCardIndex: View {
    var body: some View {
        ZStack{
            
            Text("hello")
        }.frame(width: .infinity, height: 166, alignment: .center)
    }
}

struct CardIndex_Previews: PreviewProvider {
    static var previews: some View {
        CardIndex()
    }
}
