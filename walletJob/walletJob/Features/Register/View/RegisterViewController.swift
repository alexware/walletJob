//
//  RegisterViewController.swift
//  walletJob
//
//  Created by Alejandro Ramos Grifé on 05/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {
 
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var surname: UITextField!
    var presenter: WelcomePresenter?
    
    @IBAction func add(_ sender: Any) {
        guard let nameString = name.text, let surnameString = surname.text else {
            self.presentingViewController?.dismiss(animated: true, completion: nil)
            return
        }
        presenter?.addNewPerson(with: nameString, surname: surnameString)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
