//
//  AccountItem.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 28/12/2021.
//

import SwiftUI

struct AccountItem: View {
    @StateObject var viewModel = AcountViewModel()
    var body: some View {
        VStack{
            HStack(spacing: 0){
                ForEach(viewModel.listNumberAcount.indices, id: \.self) {index in
                    creatItemAccount(index: index)
                }
            }.padding(.horizontal)
        }
    }
    func creatItemAccount(index: Int) -> some View {
        let item = viewModel.listNumberAcount[index]

        return HStack(spacing:0){
            if index > 0 {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, maxHeight: 1)
            }
            Text(item.number ?? "")
                .foregroundColor(.white)
                .frame(width: 20, height: 20)
                .background(.gray)
                .opacity(0.5)
                .clipShape(Circle())
                
        }
    }
    func creatItemAccountDone(index: Int) -> some View {
        let item = viewModel.listNumberAcount[index]

        return HStack(spacing:0){
            if index > 0 {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, maxHeight: 1)
            }
            Text(item.number ?? "")
                .foregroundColor(.white)
                .frame(width: 20, height: 20)
                .background(.orange)
                .opacity(0.5)
                .clipShape(Circle())
                
        }
    }
}

struct ItemNumberAccountModel {
    var number: String?
}
class AcountViewModel: ObservableObject {
    @Published var listNumberAcount = [ItemNumberAccountModel(number: "1"),ItemNumberAccountModel(number: "2"), ItemNumberAccountModel(number: "3")]
}

struct AccountItem_Previews: PreviewProvider {
    static var previews: some View {
        AccountItem()
    }
}
