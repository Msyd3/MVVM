//
//  CarVM.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 04/11/1444 AH.
//

import Foundation


class CarVM: ObservableObject {
    @Published var cars: [Car] = []
    
    init() {
        cars = [
            Car(id: 1, make: "Tesla", model: "Model 3", year: 2023),
            Car(id: 2, make: "Toyota", model: "Camry", year: 2022),
            Car(id: 3, make: "Honda", model: "Civic", year: 2021),
        ]
    }
    
    func addCar(make: String, model: String, year: Int) {
        cars.append(Car(id: cars.count + 1, make: make, model: model, year: year))
    }
    
    
}
