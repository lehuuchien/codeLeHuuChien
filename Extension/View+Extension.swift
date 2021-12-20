//
//  View+Extension.swift
//  Phase1
//
//  Created by Le Huu Chien on 20/12/2021.
//

import Foundation
import SwiftUI

extension Double {
    var w: CGFloat {
        return UIScreen.main.bounds.width * self
    }
    
    var h: CGFloat {
        return UIScreen.main.bounds.height * self
    }
    
    func width() -> CGFloat {
        return self
    }
}


