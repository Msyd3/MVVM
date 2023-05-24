//
//  PersonView.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 04/11/1444 AH.
//

import SwiftUI

struct PersonView: View {
    
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        
        List(vm.people) { person in
            Text(person.name)
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
