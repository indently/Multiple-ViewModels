//
//  ChangingDataApp.swift
//  ChangingData
//
//  Created by Federico on 29/04/2022.
//

import SwiftUI

@main
struct ChangingDataApp: App {
    init() {
        @Provider var data = MainData()
        @Provider var printLogs = PrintLogs()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
