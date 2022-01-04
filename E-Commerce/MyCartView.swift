//
//  MyCartView.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 30/12/2021.
//

import SwiftUI

struct MyCartView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 0){
                Text("items")
                    .bold()
                    .padding()
            }
            ScrollView(showsIndicators: false){
                ForEach(viewModel.addlistcart.indices, id: \.self) {index in
                    let item = viewModel.addlistcart[index]
                    CartItem(model: item)
                }
            }
            //
        Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .onAppear {
            viewModel.getListCarts()
        }
    }
}

struct CartItem: View {
    @State var count = 1
    var model: ProductModel?
    var body: some View {
        VStack(alignment: .leading){
            VStack{
                HStack{
                    Image(model?.image ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 90, maxHeight: 90)
                    VStack(alignment: .leading){
                        Text(model?.nameProduct ?? "")
                        Spacer()
                        HStack{
                            Text(model?.price ?? "")
                                .bold()
                            Spacer()
                            Button {
                                if count > 1 {
                                    count -= 1
                                }
                            } label: {
                                Image(systemName: "minus.circle")
                                    .foregroundColor(.black)
                            }
                            Text("\(count)")
                            Button {
                                count += 1
                            } label: {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }.frame(maxWidth: .infinity, maxHeight: 60)
                .padding(.horizontal)
            }
            HStack{
                Button {} label: {
                    Text("Remove")
                        .foregroundColor(.orange)
                        .bold()
                        .padding(.leading)
                }
                Button {} label: {
                    Text("Save for Later")
                        .foregroundColor(.orange)
                        .bold()
                        .padding(.leading)
                }
            }
        }
        .padding()
    }
}

struct MyCartView_Previews: PreviewProvider {
    static var previews: some View {
        MyCartView()
    }
}
