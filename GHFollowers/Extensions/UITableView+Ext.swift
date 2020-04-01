//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 01/04/2020.
//  Copyright © 2020 andrewlawler. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
}
