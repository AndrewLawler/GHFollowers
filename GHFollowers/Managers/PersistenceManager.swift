//
//  PersistenceManager.swift
//  GHFollowers
//
//  Created by Andrew Lawler on 30/03/2020.
//  Copyright © 2020 andrewlawler. All rights reserved.
//

import Foundation

enum PersistenceActionType {
    case add, remove
}

// can't init empty enum so we use enum, not a class as UserDefaults already singleton pattern

enum PersistenceManager {
    
    // defaults to stop us typing UserDefaults.standard all the time
    
    static private let defaults = UserDefaults.standard
    
    // enum to store favorites so we have no stringly typed code
    
    enum Keys { static let favorites = "favorites" }
    
    static func updateWith(favorite: Follower, actionType: PersistenceActionType, completed: @escaping (GFError?) -> Void) {
        
        retrieveFavorites { result in
            switch result {
            case .success(var favorites):
                switch actionType {
                case .add:
                    guard !favorites.contains(favorite) else {
                        completed(.alreadyInFavorites)
                        return
                    }
                    favorites.append(favorite)
                case .remove:
                    favorites.removeAll { $0.login == favorite.login }
                }
                
                completed(save(favorites: favorites))
                
            case .failure(let error):
                completed(error)
            }
        }
        
    }
    
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        
        guard let favoritesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavorite))
        }
        
    }
    
    static func save(favorites: [Follower]) -> GFError? {
        
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.set(encodedFavorites, forKey: Keys.favorites)
            return nil
        } catch {
            return .unableToFavorite
        }
        
    }
    
    
}
