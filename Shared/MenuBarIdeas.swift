//
//  MenuBarIdeas.swift
//  Phase1
//
//  Created by Le Huu Chien on 20/12/2021.
//

import SwiftUI

struct MenuBarIdeas: View {
    var titles: [String] = []
    var didSelectedItem: ((Int) -> Void)?
    
    @State private var currentIndex = 0
    var body: some View {
            HStack{
                Image(systemName: "person.crop.circle.fill")
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    ForEach(titles.indices, id: \.self) { index in
                        Button {
                            currentIndex = index
                            didSelectedItem?(index)
                        } label: {
                                Text(titles[index])
                                .foregroundColor(currentIndex == index ? .blue : .gray)
                                Spacer()
                        }
                    }
                }.frame(maxWidth: 0.65.w, maxHeight: 50, alignment: .center)
                Spacer()
                Image("Search")
                    .foregroundColor(.white)
                    .padding(.trailing, 8)
                Image("chat")
                    .foregroundColor(.white)

            }
            .frame(alignment: .top)
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                .background(Color(hex: "0F1527"))
    }
}

struct MenuBarIdeas_Previews: PreviewProvider {
    static var previews: some View {
        MenuBarIdeas()
    }
}


