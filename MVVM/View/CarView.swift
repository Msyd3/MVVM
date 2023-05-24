//
//  CarView.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 04/11/1444 AH.
//

import SwiftUI

struct CarView: View {
    
    @ObservedObject var vm = CarVM()
    
    var body: some View {
        
        VStack{
            List(vm.cars) { car in
                Text(car.make)
            }
            
            Button(action: {
                self.vm.addCar(make: "New Make", model: "New Model", year: 2023)
            }) {
                Text("Add Car")
            }
        }
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView()
    }
}
