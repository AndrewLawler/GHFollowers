//
//  GFButton.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 29/12/2019.
//  Copyright © 2019 andrewlawler. All rights reserved.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        // calling apples super.button code
        super.init(frame: frame)
        // configuring our button
        configure()
    }
    
    // we are not using StoryBoard so this doesn't matter
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // making a customsed initialiser for the button, think of this as a constructor
    convenience init(backgroundColor: UIColor, title: String){
        // needs to call super init and we have no frame so use .zero
        self.init(frame: .zero)
        // set the background color and the title
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
    }
    
    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
    
    private func configure() {
        // setting the style of the button
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
