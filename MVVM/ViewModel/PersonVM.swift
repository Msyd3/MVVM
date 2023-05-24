//
//  PersonVM.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 04/11/1444 AH.
//

import Foundation

 @MainActor class ViewModel: ObservableObject {
    @Published var people: [Person] = []

    init() {
        people = [
            Person(id: 1, name: "Mohammed Ali"),
            Person(id: 2, name: "Saad Hasn"),
        ]
    }
}
