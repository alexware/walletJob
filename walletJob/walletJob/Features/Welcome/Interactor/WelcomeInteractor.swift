//
//  WelcomeInteractor.swift
//  walletJob
//
//  Created by Alejandro Ramos Grifé on 05/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation

class WelcomeInteractor {
    
    var presenter: WelcomePresenter?
    var repository: Repository
    
    init() {
        repository = Repository()
    }
    
    func addNewObject(with name: String, surname: String) {
        guard name.isEmpty == false, surname.isEmpty == false else {
            return
        }
        
        let person = Person()
        person.name = name
        person.surname = surname
        
        if var repo = repository.persons {
            repo.append(person)
            repository.persons = repo
        } else {
            repository.persons = [Person]()
            repository.persons?.append(person)
        }
        
        updateList(repository.persons!)
    }
    
    func updateList(_ list: [Person]) {
        var arrayPersons = [String]()
        for person: Person in list {
            arrayPersons.append(person.name! + " " + person.surname!)
        }
        
        presenter?.updateObjects(arrayPersons)
    }
    
}
