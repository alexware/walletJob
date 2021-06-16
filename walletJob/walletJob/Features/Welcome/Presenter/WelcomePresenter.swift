//
//  WelcomePresenter.swift
//  walletJob
//
//  Created by Alejandro Ramos Grifé on 05/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation

class WelcomePresenter: InteractorProtocolOutput {
   
    var view: WelcomeViewController?
    var interactor: WelcomeInteractor?
    var routing: WelcomeRouter?
    
    init() {
        
    }
    
    func addNewObject() {
        routing?.addView()
    }
    
    func addNewPerson(with name: String, surname: String) {
        interactor?.addNewObject(with: name, surname: surname)
    }
    
    func updateObjects(_ list: [String]) {
        _ = view?.setLists(with: list)
    }
    
}
