//
//  ViewModels.swift
//  ChangingData
//
//  Created by Federico on 29/04/2022.
//

import Foundation

class OverallData: ObservableObject {
    @Published var count = 0
}

class ViewModel: ObservableObject {
    private let data: OverallData
    
    init(data: OverallData) {
        self.data = data
    }
    
    func incrementCount() {
        data.count += 1
        print("ViewModel 1 is being used.")
    }
}

class ViewModelTwo: ObservableObject {
    private let data: OverallData
    
    init(data: OverallData) {
        self.data = data
        self.localCount = data.count
    }
    
    func incrementCount() {
        data.count += 1
        print("ViewModel 2 is being used.")
    }
    
}
