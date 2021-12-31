//
//  AccountModel.swift
//  Phase1 (iOS)
//
//  Created by Le Huu Chien on 27/12/2021.
//

import Foundation

struct TestA {
    var bien1: String?
    var bien2: String?
    
    init(a: String, b: String, isA: Bool) {
        bien1 = a
        bien2 = isA ? a : b
    }
}

let bien = TestA(a: "A", b: "B", isA: true)
