//
//  UserDefaults.swift
//  walletJobKit
//
//  Created by Alejandro Ramos on 13/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    static var shared: UserDefaults {
        let combined = UserDefaults.standard
        combined.addSuite(named: AppConstants.Idenfifiers.group)
        return combined
    }
    
    static func makeClearedInstance(
        for functionName: StaticString = #function,
        inFile fileName: StaticString = #file
    ) -> UserDefaults {
        let className = "\(fileName)".split(separator: ".")[0]
        let testName = "\(functionName)".split(separator: "(")[0]
        let suiteName = "\(AppConstants.Idenfifiers.group).test.\(className).\(testName)"
        
        let defaults = self.init(suiteName: suiteName)!
        defaults.removePersistentDomain(forName: suiteName)
        return defaults
    }
}
