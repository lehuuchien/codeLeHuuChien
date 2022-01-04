//
//  BuyView.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 31/12/2021.
//

import SwiftUI

struct BuyView: View {
    @State var current: Int = 0
    @StateObject var viewModel = HomeViewModel()
    var model: ProductModel
    var body: some View {
        VStack(alignment: .leading){
            Image(model.image ?? "")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 200)
                .padding(.horizontal)
            Text(model.nameProduct ?? "")
                .padding(.horizontal)
            HStack(spacing: 1){
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size: 22))
                Text("4.9")
                    .font(.system(size: 22))
                    .bold()
                Text("(120)")
                Spacer()
                Text(model.price ?? "")
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                    .bold()
                Text("$5120")
                    .foregroundColor(.gray)
                    .overlay(
                        Rectangle()
                            .frame(maxWidth: 50, maxHeight: 1))
            }.padding(.horizontal)
            
            Text("Available Sizes")
                .foregroundColor(.gray)
                .font(.system(size: 16))
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 0))
            //
            SizeItem(listSize: ["3.5", "4", "4.5", "5", "5.5", "6"],
                     checkSize: {index in
                current = index
            })
                .padding()
            //
            Text("Colors")
                .bold()
                .foregroundColor(.gray)
                .padding(.leading)
            //
            ColorView(listColor: ["000080", "008080", "008000", "C0C0C0", "00FFFF"], checkColor: {index in
                current = index
            })
            Spacer()
            HStack{
                Spacer()
                Button {
                    viewModel.addCart(item: model)
                    print(viewModel.addlistcart)
                } label: {
                    HStack{
                        Image(systemName: "cart.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                        Text("Add to cart")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                    }.frame(maxWidth: 200, maxHeight: 40)
                    .background(.orange)
                    .cornerRadius(28)
                }
                Spacer()
            }.padding(.bottom)
            
        }
        .onAppear {
            viewModel.getListCarts()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

//---
//struct BuyView_Previews: PreviewProvider {
//    static var previews: some View {
//        BuyView()
//    }
//}

struct ColorView: View {
    var listColor: [String] = []
    var checkColor: ((Int) -> Void)?
    @State var current = 0
    var body: some View {
        HStack{
            ForEach(listColor.indices, id: \.self) {index in
                Button {
                    current = index
                    checkColor?(index)
                } label: {
                    Color(hex: ((current == index) ? listColor[index] : "FFFFFF"))
                        .frame(maxWidth: 30, maxHeight: 30)
                        .clipShape(Circle())
                        .overlay(
                            Color(hex: listColor[index])
                                .frame(maxWidth: 20, maxHeight: 20)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.white, lineWidth: 5))
                        )
                }
            }
        }.padding(.leading)
    }
}

struct SizeItem : View {
    var listSize: [String] = []
    @State var current = 0
    var checkSize: ((Int) -> Void)?
    var body: some View {
        HStack{
            ForEach(listSize.indices, id: \.self) { index in
                Button {
                    current = index
                    checkSize?(index)
                } label: {
                    Text(listSize[index])
                        .bold()
                        .foregroundColor((current == index) ? .white : .gray)
                        .frame(maxWidth: 35, maxHeight: 35)
                        .background((current == index) ? .orange : .white)
                        .clipShape(Circle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(((current == index) ? .orange : .gray), lineWidth: 1))
                }
                
            }
        }
    }
}
