//
//  ContentScreen.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 24/12/2021.
//

import SwiftUI

struct ContentScreen: View {
    @StateObject var viewModel = DataViewModel()
    @State var isPush = false
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Spacer()
                    NavigationLink(isActive: $isPush) {
                        AddProfile(listData: $viewModel.listData, isPush: $isPush)
                    } label: {
                        Text("ADD")
                    }

                }
                ScrollView{
                    ForEach(viewModel.listData.indices, id: \.self){index in
                        let item = viewModel.listData[index]
                        HStack{
                            VStack{
                                Text(item.name ?? "")
                                    .foregroundColor(.black)
                                Text(item.birth ?? "")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12))
                            }
                            Spacer()
                            Text(item.position ?? "")
                                .foregroundColor(.black)
                        }.frame(maxWidth: .infinity)
                            .padding(.horizontal, 16)
                    }
                }
                Spacer()
            }
        }
    }
}
//
//struct ContentScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentScreen(list: [])
//    }
//}
