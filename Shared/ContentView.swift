//
//  ContentView.swift
//  Shared
//
//  Created by Le Huu Chien on 14/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var isClick:Bool = false
    var viewMenuBar = ViewMenuBar()
    var body: some View {
        NavigationView{
            VStack(alignment: .leading ) {
                HStack{
                    Image("new")
                        .resizable()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 0))
                        .frame(width: 40, height: 40, alignment: .center)
                        
                    ViewTopTitle()
                    Button(action:{}){
                        Image("Search")
                            .padding()
                    }
                    Button(action:{}){
                        Image("chat")
                    }
                }.frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                
                //---
                ScrollView(showsIndicators: false){
                    //
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            Spacer()
                            ViewMenuBar()
                            Spacer()
                        }.padding(16)
                    }
                    VStack(alignment: .leading){
                        Text("Trending")
                            .foregroundColor(.white)
                            .padding(.leading, 16)
                    }.frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
                    //-----
                        HStack{
                            ViewFrame()
                                .padding(.leading, 16)
                        }.frame(width: .infinity, height: 260, alignment: .center)
                    //-----
                    VStack{
                    }.frame(maxWidth: .infinity, maxHeight: 5, alignment: .center)
                        .background(Color.black)
                    //---
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ViewTertiary()
                        }
                    }
                    //----
                    HStack{
                        ViewFrame1067()
                            .padding(.leading, 8)
                        Button {
                            isClick.toggle()
                            
                        } label: {
                            Image( isClick ? "Len" : "xuong")
                                .padding()
                        }
                    }
                    if isClick == true {
                        HStack{
                            ViewFrame10672()
                                .padding(.leading, 8)
                        }
                    }
                    //--
                    ScrollView(showsIndicators: false){
                        ViewCommunity()
                    }
                    //---
                    Spacer()
                }
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color.init(hex: "0F1527"))
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
        }
                //
    }
}
struct ModelTopTitle{
    var name: String
}

struct ViewTopTitle: View {
    let listTopTitle = [ModelTopTitle(name: "Follow"), ModelTopTitle(name: "Ideas"), ModelTopTitle(name: "Education")]
    var body: some View {
        
        ForEach(listTopTitle.indices, id: \.self) { index in
            let item = listTopTitle[index]
            TopTitle(name: item.name)
        }
    }
}

struct TopTitle: View {
    @State var ischeck: Bool = false
    var name: String?
    var body: some View{
            Button {
                ischeck.toggle()
            } label: {
                Text(name ?? "")
                    .foregroundColor( ischeck ? .blue : .gray)
                    .font(.system(size: 16))
                    .padding(8)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

