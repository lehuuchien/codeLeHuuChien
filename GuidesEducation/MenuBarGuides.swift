//
//  MenuBarGuides.swift
//  Phase1
//
//  Created by Le Huu Chien on 21/12/2021.
//

import SwiftUI

struct MenuBarGuides: View {
    var title: [String] = []
    var didSelectedItem: ((Int) -> Void)?
    
    @State private var currentIndex = 0
    var body: some View {
        HStack{
            ForEach(title.indices, id: \.self){ index in
                Button {
                    currentIndex = index
                    didSelectedItem?(index)
                } label: {
                    Text(title[index])
                        .foregroundColor(currentIndex == index ? .white : .gray)
                        .font(.system(size: 16))
                }

            }
        }
    }
}


struct MenuBarGuides_Previews: PreviewProvider {
    static var previews: some View {
        MenuBarGuides()
    }
}
