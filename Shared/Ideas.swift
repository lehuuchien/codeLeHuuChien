//
//  Ideas.swift
//  Phase1
//
//  Created by Le Huu Chien on 20/12/2021.
//

import SwiftUI
struct BaseScreen: View {
    
    @State private var currentIndex: Int = 0
    var body: some View {
        VStack {
            MenuBarIdeas(titles: ["Follow", "Ideas", "Education"], didSelectedItem: { index in
                currentIndex = index
            })
            Spacer()
            switch currentIndex {
            case 0:
                ContentView()
                    .padding(.top, -12)
            case 1:
                Ideas()
                    .padding(.top, -8)
            case 2:
                Text("Aollaa Screen")
            default:
                EmptyView()
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct Ideas: View {
    @StateObject var viewModel = IdeasViewModel()
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Market Pulse")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.leading, 8)
                    .padding(.top, 16)
                HStack{
                    CommunityIdeas(listCommunityIdeas: viewModel.listCommunityIdeas)
                        .padding(.top, -8)
                    }.frame(maxWidth: .infinity, maxHeight: 190, alignment: .center)
                    
                Rectangle()
                    .frame(width: .infinity, height: 2, alignment: .center)
                    .background(.black)
                    .padding(.top, -16)
                Text("People Also Bought")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: -16, leading: 8, bottom: 0, trailing: 0))
                Text("Most traded stocks in the past 2 months related to your portfolio ")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 8, trailing: 0))
                HStack{
                    CardIndex(listCardIndex: viewModel.listCardIndex)
                        .padding(.leading, 8)
                }
                HStack{
                    Text("Analyst Call")
                        .foregroundColor(.white)
                        .padding(8)
                    Spacer()
                    Button {} label: {
                        Text(">")
                            .foregroundColor(.gray)
                            .bold()
                            .font(.system(size: 20))
                    }.padding(8)
                    }
                //---
                HStack{
                    CardStock(listCardStock: viewModel.listCardStock)
                        .padding(.top, 16)
                }
                Spacer()
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color(hex: "0F1527"))
        .onAppear() {
            viewModel.getdataCommunity()
        }
    }
}

struct Ideas_Previews: PreviewProvider {
    static var previews: some View {
        BaseScreen()
    }
}
