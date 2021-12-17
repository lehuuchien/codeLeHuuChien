//
//  CommunityProfile.swift
//  Phase1
//
//  Created by Le Huu Chien on 15/12/2021.
//

import SwiftUI

struct CommunityProfile: View {
    @State var checkbutton: Bool = false
    @State var img = UIImage()
    @State var showImg = false
    @State var isOn1: Bool = false
    @State var user = ""
    @State var pass = ""
    var btn = Button {} label: {
        Text("Terms and Conditions")
    }
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Text("Create Your Community Profile")
                        .foregroundColor(.white)
                        .padding(.leading, 8)
                    Spacer()
                    Button {
                    } label: {
                        Image("close")
                            .foregroundColor(.white)
                    }
                }
                HStack{
                    Spacer()
                    VStack{
                        Button {
                        } label: {
                            ZStack{
                                Image("camera")
                                Image(uiImage: self.img)
                                    .resizable()
                                    .cornerRadius(50)
                                    .frame(width: 120, height: 120)
                                    .background(Color.gray.opacity(0.2))
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .padding()
                                    .onTapGesture {
                                        showImg = true
                                    }
                            }
                        }
                    }.sheet(isPresented: $showImg) {
                        ImagePicker(sourceType: .photoLibrary, selectedImage: self.$img)
                    }
                    Spacer()
                }
                VStack(alignment: .leading ){
                    Text("User name")
                        .foregroundColor(.gray)
                    TextField("" , text: $user)
                        .foregroundColor(.white)
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: .infinity, height: 1, alignment: .center)
                    //
                    Text("PassWord")
                        .foregroundColor(.gray)
                        .padding(.top, 16)
                    TextField("" , text: $pass)
                        .foregroundColor(.white)
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: .infinity, height: 1, alignment: .center)
                }
                //
                CheckBox()
                    .padding(EdgeInsets(top: 24, leading: 8, bottom: 0, trailing: 38))
                
                //
                Spacer()
                HStack{
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("CREATE PROFILE")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 40, alignment: .center)
                            .background(Color(hex: "D27621"))
                            .cornerRadius(30)
                    }
                    Spacer()
                }
            }.padding(8)
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color(hex: "0F1527"))
    }
}

struct CommunityProfile_Previews: PreviewProvider {
    static var previews: some View {
        CommunityProfile()
    }
}
