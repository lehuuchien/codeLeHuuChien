//
//  AppDataManager.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 04/01/2022.
//

import Foundation

class AppDataManager: NSObject {
    static let shared = AppDataManager()
    private override init() {}
    
    var listCarts: [ProductModel] = []
}
