//
//  WelcomeRouter.swift
//  walletJob
//
//  Created by Alejandro Ramos Grifé on 05/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import UIKit

class WelcomeRouter {
    
    let vc: WelcomeViewController = WelcomeViewController()
    let presenter = WelcomePresenter()
    let interactor = WelcomeInteractor()
    var navigationController: UINavigationController?
    
    init() {
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.routing = self
        interactor.presenter = presenter
        navigationController = UINavigationController(rootViewController: vc)
    }
    
    func addView() {
        //navigationController?.presentingViewControl
        let register = RegisterViewController()
        register.presenter = self.presenter
        vc.modalPresentationStyle = .fullScreen
        vc.show(register, sender: self)
        //vc.present(register, animated: true) {
            
        //}
    }
    
}
