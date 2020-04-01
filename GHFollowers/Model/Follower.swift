//
//  Follower.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 01/01/2020.
//  Copyright © 2020 andrewlawler. All rights reserved.
//

import Foundation

// JSON Codable blocks

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
