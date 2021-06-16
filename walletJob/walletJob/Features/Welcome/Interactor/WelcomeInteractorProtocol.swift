//
//  WelcomeInteractorProtocol.swift
//  walletJob
//
//  Created by Alejandro Ramos Grifé on 06/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation

protocol InteractorProtocolInput {
    func addNewPerson(with name: String, surname: String)
}

protocol InteractorProtocolOutput {
    func updateObjects(_ list: [String])
}
