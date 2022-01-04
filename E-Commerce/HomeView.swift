//
//  HomeView.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 30/12/2021.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @State var textSearch: String = ""
    let columns = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Button {} label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                    }
                    TextField("Search", text: $textSearch)
                    Button {
                        textSearch = ""
                    } label: {
                        Image(systemName: "xmark.circle")
                            .foregroundColor(.gray)
                    }
                    Button {} label: {
                        Image(systemName: "bell")
                            .foregroundColor(.gray)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading){
                        Button {} label: {
                            Image("banner")
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(20)
                                .frame(maxWidth: 400)
                                .padding(.horizontal, 16)
                                .padding(.top)
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(viewModel.listTitle.indices, id: \.self) {index in
                                    let item = viewModel.listTitle[index]
                                    titleMenu(model: item)
                                }
                            }
                        }.frame(height: 30)
                            .padding(.leading)
                            .padding(.vertical)
                        
                        HStack{
                            Text("Flash Sale")
                                .bold()
                                .font(.system(size: 20))
                            Spacer()
                            Text("Closing in: ")
                                .foregroundColor(.gray)
                            Text("Close")
                                .bold()
                        }.padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(viewModel.listProduct.indices, id: \.self) {index in
                                    let item = viewModel.listProduct[index]
                                    ProductItem(model: item)
                                }
                            }
                        }
                        //----------
                        .padding(.leading)
                        Text("Recently Viewed")
                            .bold()
                            .padding(EdgeInsets(.init(top: 16, leading: 16, bottom: 8, trailing: 0)))
                        ScrollView(showsIndicators: false){
                            LazyVGrid(columns: columns, spacing: 0){
                                ForEach(viewModel.listRecently.indices, id: \.self) { index in
                                    let item = viewModel.listRecently[index]
                                    recently(model: item)
                                }
                            }
                        }
                        Spacer()
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: 0.9.h)
                .navigationTitle("")
                .navigationBarHidden(true)
        }
    }
    
    func titleMenu(model: TitleModel) -> some View {
        Button {} label: {
            Text(model.title ?? "")
                .bold()
                .foregroundColor(.black)
            .padding(.horizontal, 19)
        }

    }
    
    
    func recently(model: RecentlyModel) -> some View {
        Button {
            
        } label: {
            VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        Image(model.image ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: 0.4.w)
                            .cornerRadius(16)
                            .overlay(
                                Image(systemName: "heart.circle.fill")
                                    .padding()
                                    .foregroundColor(.orange), alignment: .topTrailing)
                        Text(model.name ?? "")
                            .foregroundColor(.black)
                    }.padding(.horizontal)
                }
            }
        }
}

struct ProductItem: View {
    @StateObject var viewModel = HomeViewModel()
    var model: ProductModel
    var body: some View {
        NavigationLink {
            BuyView(model: model)
        } label: {
            VStack(alignment: .leading, spacing: 0){
                Text(model.sale ?? "")
                    .frame(maxWidth: 75, maxHeight: 25)
                    .foregroundColor(.orange)
                    .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.orange, lineWidth: 1))
                    .padding(.top, 3)
                Image(model.image ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 0.3.w, maxHeight: 150)
                Text(model.nameProduct ?? "")
                    .foregroundColor(.black)
                Text(model.price ?? "")
                    .bold()
                    .foregroundColor(.black)
            }.padding(.horizontal)
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
