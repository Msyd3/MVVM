//
//  AnimalModel.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 05/11/1444 AH.
//

import Foundation


struct Animal: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}
