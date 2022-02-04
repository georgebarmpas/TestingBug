//
//  Helper.swift
//  Testing_bug
//
//  Created by George Barmpas on 4/2/22.
//

import Foundation
import SwiftUI

class FrontOrBackCamera : ObservableObject {
    static let shared = FrontOrBackCamera()
    @Published var frontCamera = false
    
    private init() {}
}
