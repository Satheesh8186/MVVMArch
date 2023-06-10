//
//  ContentView.swift
//  MVVMArch
//
//  Created by satheesh kumar on 10/06/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ItemVM()
    var body: some View {
        VStack{
            Toggle("switch", isOn: $vm.isSwitchTuredOn).padding()
            HStack{
                Button("Counter") {
                    vm.increment()
                }
                Text("\(vm.counter)").bold().foregroundColor(.gray).padding()
            }
            List(vm.itemList){ item in
                HStack{
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
                
            }.listStyle(.plain).background(.cyan)
            Button("Add Elements") {
                vm.addItem()
            }
            
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
