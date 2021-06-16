//
//  UITableView+Helper.swift
//  walletJobKit
//
//  Created by Alejandro Ramos Grifé on 28/03/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import UIKit

extension UITableView {
    public func dequeueReusableCell<T:UITableViewCell>(ofType type:T.Type, indexPath: IndexPath ) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: type.className, for: indexPath) as? T else {
            fatalError("Couldn't find UITableViewCell of class \(type.className)")
        }
        return cell
    }
}
