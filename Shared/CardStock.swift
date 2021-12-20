//
//  CardStock.swift
//  Phase1
//
//  Created by Le Huu Chien on 20/12/2021.
//

import SwiftUI

struct CardStock: View {
    var listCardStock: [CardStockModel]
    var body: some View {
        HStack{
            ForEach(listCardStock.indices, id:\.self){index in
                let item = listCardStock[index]
                CardStrockItemView(data: CardStockModel(title: item.title, subtitle: item.subtitle, number: item.number, numbertaget1: item.numbertaget1, numbertaget2: item.numbertaget2))
            }
        }
    }
}

struct CardStockModel {
    var title: String?
    var subtitle: String?
    var number: String?
    var numbertaget1: String?
    var numbertaget2: String?
}
struct CardStrockItemView: View {
    var data: CardStockModel?
    var body: some View {
        ZStack{
            Rectangle()
                .background(Color(hex: "21273A"))
            VStack(alignment: .leading){
                HStack{
                    Text(data?.title ?? "")
                        .bold()
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                    Spacer()
                    Button {} label: {
                        Text("Buy")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .frame(width: 40, height: 21, alignment: .center)
                            .background(Color(hex: "00D796"))
                            .cornerRadius(5)
                    }
                }.padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
                Text(data?.subtitle ?? "")
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                Spacer()
                Text(data?.number ?? "")
                    .bold()
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .padding(8)
                HStack{
                    VStack{
                        Text("Target 1")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        Text(data?.numbertaget1 ?? "")
                            .bold()
                            .foregroundColor(Color(hex: "00D796"))
                            .font(.system(size: 16))
                    }
                    Spacer()
                    VStack{
                        Text("Target 2")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        Text(data?.numbertaget2 ?? "")
                            .bold()
                            .foregroundColor(Color(hex: "00D796"))
                            .font(.system(size: 16))
                    }
                }.padding(8)
            }
        }.frame(maxWidth: 0.5.w, maxHeight: 136, alignment: .leading)
    }
}

struct CardStock_Previews: PreviewProvider {
    static var previews: some View {
        CardStock(listCardStock: [])
    }
}
