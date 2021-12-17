//
//  MenuBar.swift
//  Phase1
//
//  Created by Le Huu Chien on 14/12/2021.
//

import SwiftUI

struct MenuBar: View {
    @State var isClick: Bool = true
    var name: String?
    var body: some View {
            Button {
                isClick.toggle()
            } label: {
                Text(name ?? "")
                    .font(.system(size: 16))
                    .padding(10)
                    .foregroundColor( isClick ? Color(hex: "8E8E8E") : Color(hex: "FFFFFF") )
                    .frame(minWidth: 15, minHeight: 40, alignment: .center)
                    .background( isClick ? Color(hex: "2B3248") : Color(hex: "0B67BE") )
                    .cornerRadius(16)
            }
        
    }
}

struct ModelMenuBar{
    var name: String?
}

struct ViewMenuBar: View {
    let listMenuBar = [ModelMenuBar(name: "Guides"), ModelMenuBar(name: "Articles"), ModelMenuBar(name: "Seminars"), ModelMenuBar(name: "Courses"), ModelMenuBar(name: "Guides"), ModelMenuBar(name: "Articles"), ModelMenuBar(name: "Seminars"), ModelMenuBar(name: "Courses")]
    var body: some View {
        ForEach(listMenuBar.indices , id: \.self){ index in
            let item = listMenuBar[index]
            MenuBar(name: item.name)
        }
    }
}

struct ViewFrame1067: View {
    let listTertiary = [ModelTertiary(name: "All"), ModelTertiary(name: "Stocks"), ModelTertiary(name: "ETFs"), ModelTertiary(name: "Funds"), ModelTertiary(name: "CFDs")]
    var body: some View {
            ForEach(listTertiary.indices , id: \.self){index in
                let item = listTertiary[index]
                MenuBar(name: item.name)
        }
    }
}

struct ViewFrame10672: View {
    let listTertiary2 = [ModelTertiary(name: "Forex/Futures"), ModelTertiary(name: "Insurance"), ModelTertiary(name: "IPOs"), ModelTertiary(name: "Others")]
    var body: some View {
        ForEach(listTertiary2.indices , id: \.self){index in
            let item = listTertiary2[index]
            MenuBar(name: item.name)
        }
    }
}

struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuBar()
    }
}
