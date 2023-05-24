//
//  FrutView.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 04/11/1444 AH.
//

import SwiftUI

struct FrutView: View {
    
    @ObservedObject var vm = FrutVM()
    
    var body: some View {
        VStack{
            List(vm.fruits) { fruit in
                Text(fruit.name)
            }
            Button(action: {
                self.vm.addFruit(name: "Mango", imageName: "new_fruit")
            }) {
                Text("Add Fruit")
            }
        }
    }
}

struct FrutView_Previews: PreviewProvider {
    static var previews: some View {
        FrutView()
    }
}
