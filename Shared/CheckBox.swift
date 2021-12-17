//
//  CheckBox.swift
//  Phase1
//
//  Created by Le Huu Chien on 16/12/2021.
//

import SwiftUI

struct CheckBox: View {
    @State var checkbutton: Bool = true
    var body: some View {
        VStack{
            HStack{
                    Button {
                        checkbutton.toggle()
                    } label: {
                        Image(checkbutton ? "check" : "checktrue")
                }
                Text("I have read and agree to the ").font(.system(size: 14)).foregroundColor(.white) + Text("Terms and Conditions").foregroundColor(.blue).font(.system(size: 14)) + Text(" of the community").font(.system(size: 14)).foregroundColor(.white)
            }
        }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        CheckBox()
    }
}
