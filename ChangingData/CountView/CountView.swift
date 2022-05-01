//
//  CountView.swift
//  ChangingData
//
//  Created by Federico on 29/04/2022.
//

import SwiftUI

struct CountView: View {
    @ObservedObject var data: MainData
    @StateObject private var vm2: ViewModelTwo
    
    init() {
        @Inject var dataValue: MainData
        _data = ObservedObject(wrappedValue: dataValue)
        _vm2 = StateObject(wrappedValue: ViewModelTwo())
    }

    var body: some View {
        VStack {
            Text("\(data.count)")
            Button("External button") {
                vm2.incrementCount()
            }
            .tint(.indigo)
        }
        .padding()
        .background(.thinMaterial)
        .cornerRadius(10)
        .padding()
    }
}

struct CountView_Previews: PreviewProvider {
    static var previews: some View {
        CountView()
    }
}
