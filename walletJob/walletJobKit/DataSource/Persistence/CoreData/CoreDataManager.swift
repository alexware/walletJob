//
//  CoreDataManager.swift
//  walletJobKit
//
//  Created by Alejandro Ramos on 13/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager: DataManager {
    
    private let data: NSManagedObject?
    
    init(data: NSManagedObject?) {
        self.data = data
    }
    
    func create<T>(_ model: T.Type, completion: @escaping ((T) -> Void)) throws where T : Storable {
         //
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
         //
     }
}
