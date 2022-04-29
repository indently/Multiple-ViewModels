//
//  CountView.swift
//  ChangingData
//
//  Created by Federico on 29/04/2022.
//

import SwiftUI

struct CountView: View {
    @ObservedObject var data: OverallData
    @StateObject private var vm2: ViewModelTwo
    
    init(data: OverallData) {
        _data = ObservedObject(wrappedValue: data)
        _vm2 = StateObject(wrappedValue: ViewModelTwo(data: data))
    }

    var body: some View {
        VStack {
            Text("\(data.count)")
            Button("External button") {
                vm2.incrementCount()
            }
        }
        .padding()
        .background(.thinMaterial)
        .cornerRadius(10)
        .padding()
    }
}

struct CountView_Previews: PreviewProvider {
    static var previews: some View {
        CountView(data: OverallData())
        
    }
}
