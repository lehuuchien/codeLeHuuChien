//
//  AddProfile.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 24/12/2021.
//

import SwiftUI

struct AddProfile: View {
    @State var addName: String = ""
    @State var addBirt: String = ""
    @State var addPosition: String = ""
    @Binding var listData: [DataModel]
    @Binding var isPush: Bool
    var body: some View {
        VStack{
            VStack{
                TextField("ho ten: ", text: $addName)
                TextField("ngay sinh: ", text: $addBirt)
                TextField("vi tri: ", text: $addPosition)
            }
            
            Button {
                listData.append(DataModel(name: addName, birth: addBirt, position: addPosition))
                isPush = false
            } label: {
                Text("ADD")
                    .foregroundColor(.white)
                    .frame(width: 160, height: 30)
                    .background(.blue)
                    .cornerRadius(16)
                    .padding()

            }

            Spacer()
        }.padding(.horizontal, 16)
    }
}

//struct AddProfile_Previews: PreviewProvider {
//    static var previews: some View {
//        AddProfile()
//    }
//}
