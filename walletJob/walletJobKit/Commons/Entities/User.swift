//
//  User.swift
//  walletJobKit
//
//  Created by Alejandro Ramos on 12/04/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import Foundation

enum Role {
    case company
    case candidate
}

struct GeoPoint {
    var latitude: Double
    var longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func stringGeoPoint() -> String {
        return "(\(latitude), \(longitude))"
    }
}

struct User {
    var id: String
    var name: String?
    var surname: String?
    var location: GeoPoint
    var role: Role
}
