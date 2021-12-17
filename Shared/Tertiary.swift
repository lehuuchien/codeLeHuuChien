//
//  Tertiary.swift
//  Phase1
//
//  Created by Le Huu Chien on 14/12/2021.
//

import SwiftUI

struct Tertiary: View {
    var name: String?
    var body: some View {
        Button {
            
        } label: {
            Text(name ?? "")
                .foregroundColor(.white)
                .padding()
        }

    }
}

struct ModelTertiary {
    var name: String?
}

struct ViewTertiary: View {
    let listTertiary = [ModelTertiary(name: "Investment Ideas"), ModelTertiary(name: "Personal Finance"), ModelTertiary(name: "PlatformGuide"), ModelTertiary(name: "Investment Ideas")]
    var body: some View {
        ForEach(listTertiary.indices , id: \.self){index in
            let item = listTertiary[index]
            Tertiary(name: item.name)
        }
    }
}

struct Tertiary_Previews: PreviewProvider {
    static var previews: some View {
        Tertiary()
    }
}
