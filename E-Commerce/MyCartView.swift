//
//  MyCartView.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 30/12/2021.
//

import SwiftUI

struct MyCartView: View {
    @State var viewModel = HomeViewModel()
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 0){
                Text("items")
                    .bold()
                    .padding()
            }
            //
            ForEach(viewModel.listCart.indices, id: \.self) {index in
                let item = viewModel.listCart[index]
                CartItem(model: item)
            }
        Spacer()
        }
        .onAppear{
            viewModel.addCart()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    }
}

struct CartItem: View {
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
                            Text("1")
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
        .overlay(
        RoundedRectangle(cornerRadius: 30)
            .stroke(.gray))
            .padding()
    }
}

struct MyCartView_Previews: PreviewProvider {
    static var previews: some View {
        MyCartView()
    }
}
