//
//  DataViewModel.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 24/12/2021.
//

import Foundation
import UIKit

class DataViewModel: ObservableObject {
    @Published var listData: [DataModel] = []
    
    func getData() {
        let data:[DataModel] = []
        self.listData = data
    }
    
//    func addData(aName: String, aBirth: String, aPosition: String) {
//        listData.append(DataModel(name: aName, birth: aBirth, position: aPosition))
//    }
    
}
