//
//  ChooseClassScreen.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 29/12/2021.
//

import SwiftUI



struct ClassModel {
    var id: Int
    var name: String
    var isSelected = false
}

class ChooseClassScreenViewModel: ObservableObject {
    @Published var defaultList: [ClassModel] = []
    @Published var selectedList: [ClassModel] = []
    
    func getData() {
        let names = ["Lop1", "Lop2", "Lop3", "Lop4", "Lop5"]
        names.enumerated().forEach { (index, name) in
            defaultList.append(ClassModel(id: index, name: name))
        }
    }
    
    func selectDefaultListItem(index: Int) {
        defaultList[index].isSelected.toggle()
    }
    
    func getSelectedItem() {
        var list: [ClassModel] = []
        defaultList.forEach { model in
            if model.isSelected {
                list.append(model)
            }
        }
        selectedList = list
    }
}

struct ChooseClassScreen: View {
    @StateObject var viewModel = ChooseClassScreenViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.defaultList.indices, id: \.self) { index in
                    let item = viewModel.defaultList[index]
                    HStack {
                        Button {
                            viewModel.selectDefaultListItem(index: index)
                        } label: {
                            Image(item.isSelected ? "checkon" : "checkoff")
                        }
                        
                        Text(item.name)

                    }
                }
            }
            .frame(height: 200)
            
            Button {
                viewModel.getSelectedItem()
            } label: {
                Text("GET SELECTED CLASS")
            }

            List {
                ForEach(viewModel.selectedList.indices, id: \.self) { index in
                    let item = viewModel.selectedList[index]
                    HStack {
                        Button {
                        } label: {
                            Image(item.isSelected ? "checkon" : "checkoff")
                        }
                        
                        Text(item.name)

                    }
                }
            }
            .frame(height: 200)
        }
        .onAppear {
            viewModel.getData()
        }
    }
}

struct ChooseClassScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChooseClassScreen()
    }
}
