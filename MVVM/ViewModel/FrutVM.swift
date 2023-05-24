//
//  FrutVM.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 04/11/1444 AH.
//

import Foundation


class FrutVM: ObservableObject {
    @Published var fruits: [Fruit] = [
        Fruit(id: 1, name: "Apple", imageName: "apple"),
        Fruit(id: 2, name: "Banana", imageName: "banana"),
        Fruit(id: 3, name: "Orange", imageName: "orange"),
    ]
    
    init() {
    }
    
    func addFruit(name: String, imageName: String) {
        fruits.append(Fruit(id: fruits.count + 1, name: name, imageName: imageName))
    }
}

