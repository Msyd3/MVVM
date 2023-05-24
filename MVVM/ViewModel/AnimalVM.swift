//
//  AnimalVM.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 05/11/1444 AH.
//

import Foundation


class AnimalVM: ObservableObject {
    
    @Published var animals: [Animal] = [
        Animal(name: "Dog",description: "loyal & friendly"),
        Animal(name: "Cat", description: "curious"),
        Animal(name: "Bird", description: "graceful"),
    ]
    
    init() {
    }
    
    func addAnimal(name: String, imageName: String, description: String) {
        animals.append(Animal(name: name,description: description))
    }
    
}
