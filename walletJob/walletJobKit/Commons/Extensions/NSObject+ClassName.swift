//
//  NSObject+ClassName.swift
//  walletJobKit
//
//  Created by Alejandro Ramos Grifé on 28/03/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation

extension NSObject {
    static var className: String {
        return String(describing: self)
    }
}
