//
//  IdeasCommunity.swift
//  Phase1
//
//  Created by Le Huu Chien on 17/12/2021.
//

import SwiftUI

struct IdeasCommunity: View {
    var body: some View {
        VStack(alignment: .leading){//---
            HStack{
                Image(systemName: "person.crop.circle.fill")
                    .foregroundColor(.white)
                Spacer()
                Button {} label: {
                    Text("Follow")
                        .foregroundColor(.gray)
                }
                Spacer()
                Button {} label: {
                    VStack{
                        Text("Ideas")
                            .padding(.bottom, -16)
                            .foregroundColor(.blue)
                        Rectangle().frame(width: 24, height: 2, alignment: .center).padding(.top, 8)
                    }
                }
                Spacer()
                Button {} label: {
                    Text("Education")
                        .foregroundColor(.gray)
                }
                Spacer()
                Image("Search")
                    .padding(.trailing, 8)
                Image("chat")
            }.padding()
            Text("Market Pulse")
                .foregroundColor(.white)
                .padding()
            
            HStack{
                CardViewIdeas()
                    .padding(.top, -50)
                    .frame(width: .infinity, height: 180, alignment: .center)
            }
            Rectangle()
                .background(.black)
                .frame(width: .infinity, height: 3, alignment: .center)
                .padding(.top, -10)
            
            Text("People Also Bought")
                .font(.system(size: 18))
                .bold()
                .foregroundColor(.white)
                .padding(.leading)
            Text("Most traded stocks in the past 2 months related to your portfolio")
                .font(.system(size: 12))
                .foregroundColor(Color(hex: "999999"))
                .padding(.leading)
                .padding(.top, 1)
            
            Spacer()
        }
        //---
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color(hex: "0F1527"))
    }
}

struct IdeasCommunity_Previews: PreviewProvider {
    static var previews: some View {
        IdeasCommunity()
    }
}
