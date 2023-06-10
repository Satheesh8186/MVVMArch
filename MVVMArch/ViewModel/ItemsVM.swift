//
//  ItemsVM.swift
//  MVVMArch
//
//  Created by satheesh kumar on 10/06/23.
//

import Foundation
import SwiftUI

extension ContentView{
    @MainActor class ItemVM: ObservableObject {
        @Published var isSwitchTuredOn: Bool = false
        @Published var counter = 0
        @Published var itemList = [Item]()
        
        func increment(){
            counter += 1
        }
        
        func addItem(){
            let randomItem = ["test","test2","test3","test4","test5"];
            let item = randomItem.randomElement()
            let newItem = Item(name: item!, description: "Item  \(counter)");
            withAnimation {
                itemList.insert(newItem, at: 0)
            }
        }
    }
}
