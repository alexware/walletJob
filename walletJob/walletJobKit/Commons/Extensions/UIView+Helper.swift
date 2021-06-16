//
//  UIView+Helper.swift
//  walletJobKit
//
//  Created by Alejandro Ramos Grifé on 27/03/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import UIKit

extension UIView {
    
    var className: String {
        return NSStringFromClass(self.classForCoder).components(separatedBy: ".").last!
    }
    
    func initializeView() {
        let view = self.viewForNibView()
        view?.frame = bounds
        view?.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        guard let viewToAdd = view else {
            return
        }
        addSubview(viewToAdd)
    }
    
    func viewForNibView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let className = self.className
        guard let view: UIView = bundle.loadNibNamed(className, owner: self, options: nil)?.first as? UIView else {
            return nil
        }
        view.frame = self.bounds
        
        return view
    }
    
    func removeAllSubviews() {
        for subview in subviews {
            subview.removeFromSuperview()
        }
    }
    
    func fitInSuperview() {
        guard let superview = self.superview else { return }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        leftAnchor.constraint(equalTo: superview.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: superview.rightAnchor).isActive = true
    }
}
