//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 29/12/2019.
//  Copyright © 2019 andrewlawler. All rights reserved.
//

import UIKit

class GFTextField: UITextField {

    // adding the init method
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    // adding the needed required init but it is not implemented as we don't use storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // styling the text fields
    private func configure() {
        
        // don't auto generate autolayout constraints
        translatesAutoresizingMaskIntoConstraints = false
                    
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
                    
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
                            
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        returnKeyType = .go
        clearButtonMode = .whileEditing
        placeholder = "Enter a username"
    }
}
