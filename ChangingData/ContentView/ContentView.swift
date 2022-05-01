//
//  ContentView.swift
//  ChangingData
//
//  Created by Federico on 29/04/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var data: MainData
    @StateObject private var vm: ViewModel
    
    init() {
        @Inject var dataValue: MainData
        
        _data = ObservedObject(wrappedValue: dataValue)
        _vm = StateObject(wrappedValue: ViewModel())
    }
    
    var body: some View {
        VStack {
            Button("Increment (\(data.count))") {
                vm.incrementCount()
            }
            
            CountView()
            
            Button("\(vm.timeString)") {
                vm.updateTime()
            }
            .tint(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
