//
//  Utils.swift
//  ChangingData
//
//  Created by Federico on 01/05/2022.
//

import Foundation
import SwiftUI

class MainData: ObservableObject {
    @AppStorage("COUNT_KEY") var count: Int = 0 {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        print("MainData init called")
    }
}

class PrintLogs {
    init() {
        print("PrintLogs init called")
    }
    
    func printHello() {
        print("Hello!")
    }
    
    func printTime() -> String{
        let time = Date().formatted()
        print(time)
        return time
    }
}

