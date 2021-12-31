//
//  Settings.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 29/12/2021.
//

import SwiftUI

struct Settings: View {
    @State var currentIndex: Int = 0
    var body: some View {
        VStack{
            MenuTitle(title: ["Display", "Columns", "Groups"], disSelected: {index in
                currentIndex = index
            })
            Spacer()
            switch currentIndex {
            case 0:
                DisplayView()
                    .padding(.top, 16)
            case 1:
                ColumnsView()
                    .padding(.top, 16)
            default:
                EmptyView()
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "0B0F1B"))
    }
}

struct ColumnsView: View {
    var showList: [ColumnsModel] = []
    @State var currentColumns: Int = 0
    var body: some View {
        VStack(){
            Columns(listColumns: [ColumnsModel(imgBox: "checkoff", title: "Name"),
                                  ColumnsModel(imgBox: "checkoff", title: "Price"),
                                  ColumnsModel(imgBox: "checkoff", title: "Vol"),
                                  ColumnsModel(imgBox: "checkoff", title: "Chg%"),
                                  ColumnsModel(imgBox: "checkoff", title: "Bid")], checkbox: {index in
                currentColumns = index
            })
            //
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
        Button {
            
        } label: {
            Text("Get")
                .foregroundColor(.black)
                .frame(maxWidth: 200, maxHeight: 50)
                .background(.gray)
                .cornerRadius(16)
                .padding()
        }
        VStack{
            //------------
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
//-----
struct ColumnsModel {
    var imgBox: String?
    var title: String?
}
struct Columns: View {
    var listColumns: [ColumnsModel] = []
    var checkbox: ((Int) -> Void)?
    @State var currentColumns = 0
    var body: some View {
        VStack{
            ForEach(listColumns.indices, id: \.self){ index in
                let item = listColumns[index]
                Button {
                    currentColumns = index
                    checkbox?(index)
                } label: {
                    ColumnsItem(model: item)
                }
            }
        }
    }
}
struct ColumnsItem: View {
    @State var check: Bool = false
    var model = ColumnsModel()
    var body: some View {
        HStack{
            Button {
                check.toggle()
            } label: {
                Image(check ? "checkon" : (model.imgBox ?? ""))
            }
            Text(model.title ?? "")
                .foregroundColor(.white)
            Spacer()
        }
    }
}
//-----
class DisplayViewModel: ObservableObject {
    @Published var listTitle:[DisplayModel] = [DisplayModel(title: "Show Index", checkToggle: false),
                                               DisplayModel(title: "Show News", checkToggle: false),
                                               DisplayModel(title: "Show Pre and Post", checkToggle: false),
                                               DisplayModel(title: "Intelligent Sorting", checkToggle: false)]
}

struct DisplayModel {
    var title: String?
    var checkToggle: Bool = false
}

struct DisplayView: View {
    @StateObject var viewModel = DisplayViewModel()
    var body: some View {
        VStack(spacing: 1){
            ForEach(viewModel.listTitle.indices, id: \.self){ index in
                let item = viewModel.listTitle[index]
                DisplayItemView(check: item.checkToggle, model: item)
            }
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct DisplayItemView: View {
    @State var check: Bool = false
    var model = DisplayModel()
    var body: some View {
        Toggle(isOn: $check) {
            Text(model.title ?? "")
                .foregroundColor(.white)
        }
        .toggleStyle(SwitchToggleStyle(tint: Color(hex: "273B7B")))
        
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color(hex: "1C202D"))
    }
}




//-----
struct MenuTitle: View {
    var title: [String] = []
    var disSelected: ((Int) -> Void)?
    @State var currentIndex = 0
    var body: some View {
        HStack{
            ForEach(title.indices, id: \.self) { index in
                Spacer()
                Button {
                    currentIndex = index
                    disSelected?(index)
                } label: {
                    Text(title[index])
                        .underline((currentIndex == index ? true : false), color: Color(hex: "19A2E2"))
                        .foregroundColor((currentIndex == index ) ? Color(hex: "19A2E2") : Color(hex: "F3F3F3"))
                }
                Spacer()
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
