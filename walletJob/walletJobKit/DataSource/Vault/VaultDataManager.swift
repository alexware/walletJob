//
//  Vault.swift
//  walletJobKit
//
//  Created by Alejandro Ramos on 13/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation
import KeychainAccess

class VaultDataManager: DataManager {
    
    private let keychain = Keychain(service: AppConstants.Idenfifiers.groupVault, accessGroup: AppConstants.Idenfifiers.group)
    
    func create<T>(_ model: T.Type, completion: @escaping ((T) -> Void)) throws where T : Storable {
         /*do {
             try keychain.set("01234567-89ab-cdef-0123-456789abcdef", key: "kishikawakatsumi")
         }
         catch let error {
             print(error)
         }*/
     }
     
     func save(object: Storable) throws {
         //
     }
     
     func update(object: Storable) throws {
         //
     }
     
     func delete(object: Storable) throws {
         //
     }
     
     func deleteAll<T>(_ model: T.Type) throws where T : Storable {
         //
     }
     
     func fetch<T>(_ model: T.Type, predicate: NSPredicate?, sorted: Sorted?, completion: (([T]) -> ())) where T : Storable {

     }
}
