//
//  BookView.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 04/11/1444 AH.
//

import SwiftUI

struct BookView: View {
    
    @ObservedObject var vm = BookVM()
    
    var body: some View {
        
        VStack {
            List(vm.books) { book in
                Text(book.title)
            }
            
            Button(action: {
                self.vm.addBook(title: "New Book", author: "New Author")
            }) {
                Text("Add Book")
            }
            
        }
        
        
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
