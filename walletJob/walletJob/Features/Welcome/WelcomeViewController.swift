//
//  ViewController.swift
//  walletJob
//
//  Created by Alejandro Ramos Grifé on 27/03/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import UIKit

class WelcomeViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func setupLayout() {
        self.view.backgroundColor = UIColor.white
    }
    
    func setupNavigation() -> UINavigationController {
        return UINavigationController()
    }
    
    
    @IBAction func navigateToLogin(_ sender: Any) {
        let login = LoginViewController(nibName: "LoginViewController", bundle: nil)
        self.present(login, animated: true, completion: nil)
        //login.modalPresentationStyle = .fullScreen
        /*self.present(login, animated: true) {
            
        }*/
        
        
    }
    
}

