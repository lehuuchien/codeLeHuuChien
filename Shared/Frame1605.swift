//
//  Frame1605.swift
//  Phase1
//
//  Created by Le Huu Chien on 14/12/2021.
//

import SwiftUI

struct Frame1605: View {
    var image: String?
    var title: String?
    var subTitle: String?
    var body: some View {
        ZStack{
                Image(image ?? "")
                .resizable()
                .scaledToFill()
                .frame(width: 390, height: 200, alignment: .center)
                    .cornerRadius(4)
                    .padding()
                VStack(alignment: .leading){
                    Text(title ?? "")
                        .foregroundColor(.white)
                        .font(.system(size: 18))
                    Text(subTitle ?? "")
                        .foregroundColor(.white)
                        .font(.system(size: 16))
                }.frame(maxWidth: .infinity, maxHeight: 34, alignment: .leading)
                .padding(.top , 150)
                .padding(.leading , 30)
        }.frame(maxWidth: 390, maxHeight: 220, alignment: .bottom)
    }
}

struct ModelFrame{
    var image: String?
    var title: String?
    var subTitle: String?
}

struct ViewFrame: View {
    var body: some View {
        let listFrame = [ModelFrame(image: "new", title: "Popular Strcks Traded on POEMS July 2021", subTitle: "Aug 23, 2021"), ModelFrame(image: "view1", title: "Popular Strcks Traded on POEMS July 2021", subTitle: "Aug, 23, 2021"), ModelFrame(image: "view2", title: "Popular Strcks Traded on POEMS July 2021", subTitle: "Aug, 23, 1021"), ModelFrame(image: "view3", title: "Popular Strcks Traded on POEMS July 2021", subTitle: "Aug, 23, 2021")]
        
        TabView() {
            ForEach(0..<listFrame.endIndex){ index in
                let item = listFrame[index]
                Frame1605(image: item.image, title: item.title, subTitle: item.subTitle)
            }
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct Frame1605_Previews: PreviewProvider {
    static var previews: some View {
        Frame1605()
    }
}
