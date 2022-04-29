//
//  ContentView.swift
//  ChangingData
//
//  Created by Federico on 29/04/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var data: OverallData
    @StateObject private var vm: ViewModel
    
    init(data: OverallData) {
        _data = ObservedObject(wrappedValue: data)
        _vm = StateObject(wrappedValue: ViewModel(data: data))
    }
    
    var body: some View {
        VStack {
            Button("Increment (\(data.count))") {
                vm.incrementCount()
            }

            CountView(data: data)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(data: OverallData())
    }
}
