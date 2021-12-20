//
//  CommunityIdeas.swift
//  Phase1
//
//  Created by Le Huu Chien on 20/12/2021.
//

import SwiftUI

struct CommunityIdeas: View {
    var listCommunityIdeas: [ModelCommunityIdeas]
    var body: some View {
        HStack{
            TabView{
                ForEach(listCommunityIdeas.indices, id: \.self) { index in
                    let item = listCommunityIdeas[index]
                    ItemCommunityIdeas(image: item.image, title: item.title, article: item.article, subArticle: item.subArticle)
                }
            }.tabViewStyle(PageTabViewStyle())
        }
    }
}

struct ModelCommunityIdeas {
    var image: String?
    var title: String?
    var article: String?
    var subArticle: String?
}

struct ItemCommunityIdeas: View {
    var image: String?
    var title: String?
    var article: String?
    var subArticle: String?
    var body: some View {
        ZStack{
            Image(image ?? "")
                .resizable()
                .cornerRadius(8)
                .frame(maxWidth: 350, maxHeight: 160, alignment: .center)
            VStack(alignment: .leading ){
                ZStack{
                    Text("")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .frame(width: 143, height: 25, alignment: .center)
                        .background(.white)
                        .opacity(0.3)
                        .cornerRadius(12)
                    Text(title ?? "")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                }.padding()
                Spacer()
                Text(article ?? "")
                    .bold()
                    .padding(.leading)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                Text(subArticle ?? "")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .padding(.leading)
                    .padding(.bottom)
            }.frame(maxWidth: 350, maxHeight: 160, alignment: .leading)
        }.frame(maxWidth: 350, maxHeight: 160, alignment: .leading)
    }
}

struct CommunityIdeas_Previews: PreviewProvider {
    static var previews: some View {
        CommunityIdeas(listCommunityIdeas: [])
    }
}
