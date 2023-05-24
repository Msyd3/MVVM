//
//  BookVM.swift
//  MVVM
//
//  Created by Mohammed Alsayed on 04/11/1444 AH.
//

import Foundation
class BookVM: ObservableObject {
    @Published var books: [Book] = []
    
    init() {
        books = [
            Book(id: 1, title: "The Alchemist", author: "Paulo Coelho"),
            Book(id: 2, title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling"),
            Book(id: 3, title: "To Kill a Mockingbird", author: "Harper Lee"),
        ]
    }
    
    func addBook(title: String, author: String) {
        books.append(Book(id: books.count + 1, title: title, author: author))
    }
    
    func removeBook(id: Int) {
        guard let index = books.firstIndex(where: { $0.id == id }) else { return }
        books.remove(at: index)
    }
}
