//
//  Content-ViewModel.swift
//  ChangingData
//
//  Created by Federico on 01/05/2022.
//

import Foundation

//MARK: - ViewModel 1
final class ViewModel: ObservableObject {
    @Inject var data: MainData
    @Inject var printLogs: PrintLogs
    
    @Published var timeString = "Update time"
    
    func incrementCount() {
        data.count += 1
        print("ViewModel 1 is being used.")
    }
    
    func updateTime() {
        self.timeString = printLogs.printTime()
    }
}
