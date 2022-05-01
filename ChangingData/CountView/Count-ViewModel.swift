//
//  ViewModels.swift
//  ChangingData
//
//  Created by Federico on 29/04/2022.
//

import Foundation

//MARK: - ViewModel 2
class ViewModelTwo: ObservableObject {
    @Inject var data: MainData
    
    func incrementCount() {
        data.count += 1
        print("ViewModel 2 is being used.")
    }

}
