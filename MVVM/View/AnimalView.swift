//
//  AnimalView.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 05/11/1444 AH.
//

import SwiftUI

struct AnimalView: View {
    
    @ObservedObject var vm = AnimalVM()
    
    var body: some View {
        
        VStack{
            List(vm.animals) { animal in
                HStack{
                    Text(animal.name)
                        .bold()
                    Spacer()
                    Text(animal.description)
                }.padding()
            }
            
            Button(action: {
                self.vm.addAnimal(name: "New Animal", imageName: "new_animal", description: "A new animal")
            }) {
                Text("Add Animal")
            }
        }
        
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}
