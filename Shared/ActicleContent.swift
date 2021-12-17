//
//  ActicleContent.swift
//  Phase1
//
//  Created by Le Huu Chien on 15/12/2021.
//

import SwiftUI

struct ActicleContent: View {
    var image: String?
    var title: String?
    var date: String?
    var viewer: String?
    var textContent: String?
    var body: some View {
        ScrollView{
                VStack{
                    ZStack{
                        Image(image ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: 400, alignment: .center)
                        Text(title ?? "")
                            .bold()
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                            .padding(.leading, 8)
                            .padding(.top, 300)
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Button {
                            } label: {
                                Text("Stocks")
                                    .foregroundColor(Color(hex: "999999"))
                                    .frame(width: 72, height: 32, alignment: .center)
                                    .background(Color(hex: "2B3248"))
                                    .cornerRadius(16)
                            }
                            Button {
                            } label: {
                                Text("Funds")
                                    .foregroundColor(Color(hex: "999999"))
                                    .frame(width: 72, height: 32, alignment: .center)
                                    .background(Color(hex: "2B3248"))
                                    .cornerRadius(16)
                            }
                        }.padding(.leading, 8)
                            .padding(.top, 6)
                        HStack{
                            Text(date ?? "")
                                .foregroundColor(.gray)
                                .font(.system(size: 14))
                            Spacer()
                            Image("eye")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 15, height: 9, alignment: .center)
                            Text(viewer ?? "")
                                .foregroundColor(.gray)
                        }.padding(.leading, 8)
                            .padding(.bottom, 8)
                    }.background(Color(hex: "0F1527"))
                        .padding(.bottom, 8)
                    
                    Text(textContent ?? "")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .padding()
                }
            .background(.black)
        }
    }
}
struct ActicleContent_Previews: PreviewProvider {
    static var previews: some View {
        ActicleContent()
    }
}
