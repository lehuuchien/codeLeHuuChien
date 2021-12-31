//
//  Guides.swift
//  Phase1
//
//  Created by Le Huu Chien on 21/12/2021.
//

import SwiftUI

struct Guides: View {
    var listGuides: [GuidesModel]
    var body: some View {
        VStack{
            ForEach(listGuides.indices, id: \.self) { index in
                let item = listGuides[index]
                GuidesItem(model: GuidesModel(color: item.color, image: item.image, title: item.title, subTitle: item.subTitle))
            }
        }
    }
}

struct GuidesModel {
    var color: String?
    var image: String?
    var title: String?
    var subTitle: String?
}

struct GuidesItem: View {
    var model = GuidesModel()
    var body: some View {
        ZStack{
            Color(hex: model.color ?? "")
            HStack{
                Image(model.image ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 100, alignment: .center)
                VStack{
                    Text(model.title ?? "")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 16))
                    Text(model.subTitle ?? "")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
            }
        }
        .frame(maxWidth: 0.9.w, maxHeight: 140, alignment: .center)

    }
}

struct Guides_Previews: PreviewProvider {
    static var previews: some View {
        Guides(listGuides: [])
    }
}
