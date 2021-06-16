//
//  Repository.swift
//  walletJobKit
//
//  Created by Alejandro Ramos Grifé on 06/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation

class Repository {
    var person1: Person = Person.init(name: "Alberto", surname: "Rodriguez")
    var person2: Person = Person.init(name: "Julio", surname: "Perez")
    var person3: Person = Person.init(name: "Maria", surname: "Rodriguez")
    
    var persons: [Person]?
    
    init() {
        self.persons?.append(contentsOf: [person1, person2, person3])
    }
    
}

enum productType {
    case book
    case furniture
    case tool
    
    func description() -> String {
        switch self {
        case .book:
            return "book"
        default:
            return "other"
        }
    }
}

struct Product: Codable {
    var id: String
    var name: String
    var type: Int
}

class ViewModel {
    private var product: Product
    
    init(product: Product) {
        self.product = product
    }
    
}

