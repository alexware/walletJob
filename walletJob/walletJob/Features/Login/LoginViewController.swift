//
//  LoginViewController.swift
//  walletJob
//
//  Created by Alejandro Ramos on 12/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func setupLayout() {
        self.view.backgroundColor = UIColor.white
    }

    func dismiss() {
        self.dismiss(animated: true) {
        }
    }
    
}
