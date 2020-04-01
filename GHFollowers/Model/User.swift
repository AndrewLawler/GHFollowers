//
//  User.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 01/01/2020.
//  Copyright © 2020 andrewlawler. All rights reserved.
//

import Foundation

// JSON Codable blocks

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: Date
}
