//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 9.02.2025.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
