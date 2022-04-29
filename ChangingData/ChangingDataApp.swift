//
//  ChangingDataApp.swift
//  ChangingData
//
//  Created by Federico on 29/04/2022.
//

import SwiftUI

@main
struct ChangingDataApp: App {
    private let data = OverallData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(data: data)
        }
    }
}