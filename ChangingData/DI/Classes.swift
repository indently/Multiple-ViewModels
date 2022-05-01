//
//  Utils.swift
//  ChangingData
//
//  Created by Federico on 01/05/2022.
//

import Foundation

class MainData: ObservableObject {
    @Published var count = 0
    
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

