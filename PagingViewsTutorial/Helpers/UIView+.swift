//
//  UIView+.swift
//  PagingDemo
//
//  Created by Alex Nagy on 29/09/2020.
//

import UIKit

public extension UIView {
    func pinTo(_ view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
    }
}
