//
//  CardViewIdeas.swift
//  Phase1
//
//  Created by Le Huu Chien on 17/12/2021.
//

import SwiftUI

struct CardViewIdeas: View {
    let listCarIdeas = [ModelCardIdeas(image: "view1", title: "Daily Morning Note", article: "Daily Morning Note - 11 August 2021", subArticle: "Aug 11, 2021"),
                        ModelCardIdeas(image: "view2", title: "Daily Morning Note", article: "Daily Morning Note - 11 August 2021", subArticle: "Aug 11, 2021"),
                        ModelCardIdeas(image: "view3", title: "Daily Morning Note", article: "Daily Morning Note - 11 August 2021", subArticle: "Aug 11, 2021"),
                        ModelCardIdeas(image: "new", title: "Daily Morning Note", article: "Daily Morning Note - 11 August 2021", subArticle: "Aug 11, 2021")]
    var body: some View {
        TabView{
            ForEach(0..<listCarIdeas.endIndex){index in
                let item = listCarIdeas[index]
                ItemCardIdeas(image: item.image, title: item.title, article: item.article, subArticle: item.subArticle)
            }
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct ModelCardIdeas {
    var image: String?
    var title: String?
    var article: String?
    var subArticle: String?
}

struct ItemCardIdeas: View {
    var image: String?
    var title: String?
    var article: String?
    var subArticle: String?
    var body: some View {
        ZStack{
            Image(image ?? "")
                .resizable()
                .cornerRadius(8)
                .frame(width: 343, height: 160, alignment: .center)
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
            }.frame(width: 343, height: 160, alignment: .leading)
        }.frame(width: 343, height: 160, alignment: .leading)
    }
}

struct CardViewIdeas_Previews: PreviewProvider {
    static var previews: some View {
        CardViewIdeas()
    }
}
