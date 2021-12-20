//
//  CardIndex.swift
//  Phase1
//
//  Created by Le Huu Chien on 17/12/2021.
//

import SwiftUI

struct CardIndex: View {
    var listCardIndex: [CardIndexModel]
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(listCardIndex.indices) { index in
                        let item = listCardIndex[index]
                        ItemCardIndexViewDow(data: CardIndexModel(title: item.title, numberdow: item.numberdow, datadow: item.datadow, vectordow: item.vectordow, like: item.like))
                    }
            }
        }
    }
}
struct CardIndexModel {
    var title: String?
    var numberdow: String?
    var datadow: String?
    var vectordow: String?
    var numberup: String?
    var dataup: String?
    var vectorup: String?
    var like: String?
}

struct ItemCardIndexViewDow: View {
    var data: CardIndexModel?
    var body: some View {
        ZStack{
            Rectangle()
                .background(Color(hex: "21273A"))
            VStack(alignment: .leading){
                Text(data?.title ?? "")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                Text(data?.numberdow ?? "")
                    .bold()
                    .foregroundColor(.red)
                    .font(.system(size: 18))
                Text(data?.datadow ?? "")
                    .foregroundColor(.red)
                    .font(.system(size: 12))
                Image(data?.vectordow ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 78, maxHeight: 29, alignment: .leading)
                Image(data?.like ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 20, maxHeight: 18, alignment: .leading)
            }
        }.frame(width: 0.3.w, height: 160, alignment: .center)
    }
}
struct CardIndex_Previews: PreviewProvider {
    static var previews: some View {
        CardIndex(listCardIndex: [])
    }
}
