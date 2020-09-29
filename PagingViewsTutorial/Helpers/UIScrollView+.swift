//
//  UIScrollView+.swift
//  PagingDemo
//
//  Created by Alex Nagy on 29/09/2020.
//

import UIKit

public extension UIScrollView {
    func edgeTo(view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension UIScrollView {
    func scrollTo(horizontalPage: Int? = 0, verticalPage: Int? = 0, animated: Bool? = true) {
        var frame: CGRect = self.frame
        frame.origin.x = frame.size.width * CGFloat(horizontalPage ?? 0)
        frame.origin.y = frame.size.width * CGFloat(verticalPage ?? 0)
        self.scrollRectToVisible(frame, animated: animated ?? true)
    }
}
