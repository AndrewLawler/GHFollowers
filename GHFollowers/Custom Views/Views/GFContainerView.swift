//
//  GFContainerView.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 01/01/2020.
//  Copyright © 2020 andrewlawler. All rights reserved.
//

import UIKit

class GFContainerView: UIView {
    
    // custom view created to be the container for our alert, this is the little rounded square you see

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, cornerRadius: CGFloat, borderWidth: CGFloat, borderColor: UIColor) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
