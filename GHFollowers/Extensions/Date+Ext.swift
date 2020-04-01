//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 30/03/2020.
//  Copyright © 2020 andrewlawler. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
