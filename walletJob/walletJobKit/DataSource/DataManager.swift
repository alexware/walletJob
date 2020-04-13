//
//  DataManager.swift
//  walletJobKit
//
//  Created by Alejandro Ramos on 13/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation

enum DataManagerType {
    case cache
    case userDefaults
    case vault          // keychain wrapper
    case realm
    case coreData
}

enum DataManagerError {
    case emptyKey
    case alreadyExists
    case unknown
}

protocol DataManager {
    func create<T: Storable>(_ model: T.Type, completion: @escaping ((T) -> Void)) throws
    func save(object: Storable) throws
    func update(object: Storable) throws
    func delete(object: Storable) throws
    func deleteAll<T: Storable>(_ model: T.Type) throws
    func fetch<T: Storable>(_ model: T.Type, predicate: NSPredicate?, sorted: Sorted?, completion: (([T]) -> ()))
}

struct Sorted {
  var key: String
  var ascending: Bool = true
}

public protocol Storable {
 
}

extension CacheDataManager: Storable { }

extension UserDataManager: Storable { }

extension VaultDataManager: Storable { }

extension RealmDataManager: Storable { }

extension CoreDataManager: Storable { }
