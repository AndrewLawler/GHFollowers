//
//  GFAlertVC.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 01/01/2020.
//  Copyright © 2020 andrewlawler. All rights reserved.
//

import UIKit

// custom Alert ViewController
class GFAlertVC: UIViewController {
    
    // MARK:- UI Elements
    // UI elements
    let containerView = GFContainerView(backgroundColor: .systemBackground, cornerRadius: 16, borderWidth: 2, borderColor: .white)
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "Ok")
    
    // MARK:- Parameters
    // parameters being passed into the ViewController
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    // padding variable which we will use throughout
    let padding: CGFloat = 20
    
    // MARK:- Initialisers
    // custom init to use
    init(title: String, message: String, buttonTitle: String){
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }

    // required Storyboard init
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:- ViewDid Load
    // VDL
    override func viewDidLoad() {
        super.viewDidLoad()
        // setting our view's alpha
        view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        view.addSubviews(containerView, titleLabel, actionButton, messageLabel)
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureMessageLabel()
    }
    
    // MARK:- Constraints
    
    func configureContainerView() {
        
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    // setting up our UI elements constraints and adding them to the main view.
    
    func configureTitleLabel() {
        titleLabel.text = alertTitle ?? "Something wen't wrong"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func configureActionButton() {
        actionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    func configureMessageLabel() {
        messageLabel.text = message ?? "Unable to complete request"
        messageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        ])
    }
    
    // MARK:- Obj-c
    // our dismiss obj-c method
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    

}
