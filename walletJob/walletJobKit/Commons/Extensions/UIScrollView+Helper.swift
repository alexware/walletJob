//
//  Keyboard+Helper.swift
//  walletJobKit
//
//  Created by Alejandro Ramos Grifé on 29/03/2020.
//  Copyright © 2020 alexware. All rights reserved.
//

import UIKit

extension UIScrollView {
    func setContentInsetAndScrollIndicatorInsets(_ edgeInsets: UIEdgeInsets) {
        contentInset = edgeInsets
        scrollIndicatorInsets = edgeInsets
    }
}

protocol ScrollableContentKeyboardObserving {
    func observeKeyboardWillShowNotification(_ scrollView: UIScrollView, onShowHandler onShow: ((CGSize?) -> Void)?)
    func observeKeyboardWillHideNotification(_ scrollView: UIScrollView, onHideHandler onHide: ((CGSize?) -> Void)?)
}

extension ScrollableContentKeyboardObserving {
    
    func observeKeyboardWillShowNotification(_ scrollView: UIScrollView, onShowHandler onShow: ((CGSize?) -> Void)? = nil) {
        
        let block: (Notification) -> Void = { notification -> Void in
            
            guard let keyboardFrameEndUserInfoKey = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] else { return }
            
            let keyboardSize = (keyboardFrameEndUserInfoKey as AnyObject).cgRectValue.size
            let contentInsets = UIEdgeInsets(
                top: scrollView.contentInset.top,
                left: scrollView.contentInset.left,
                bottom: keyboardSize.height,
                right: scrollView.contentInset.right
                
            )
            scrollView.setContentInsetAndScrollIndicatorInsets(contentInsets)
            onShow?(keyboardSize)
        }
        _ = NotificationCenter.default.addObserver(
            forName: UIResponder.keyboardWillShowNotification,
            object: nil,
            queue: nil,
            using: block
        )
    }
    
    func observeKeyboardWillHideNotification(_ scrollView: UIScrollView, onHideHandler onHide: ((CGSize?) -> Void)? = nil) {
        
        let block: (Notification) -> Void = { notification in
            
            guard let keyboardFrameEndUserInfoKey = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] else { return }
            
            let keyboardSize = (keyboardFrameEndUserInfoKey as AnyObject).cgRectValue.size
            let contentInsets = UIEdgeInsets(
                top: scrollView.contentInset.top,
                left: scrollView.contentInset.left,
                bottom: .zero,
                right: scrollView.contentInset.right
            )
            scrollView.setContentInsetAndScrollIndicatorInsets(contentInsets)
            onHide?(keyboardSize)
        }
        _ = NotificationCenter.default.addObserver(
            forName: UIResponder.keyboardWillHideNotification,
            object: nil,
            queue: nil,
            using: block
        )
    }
}
