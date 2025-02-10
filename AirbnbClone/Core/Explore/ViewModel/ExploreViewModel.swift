//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 9.02.2025.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var listing = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var originalListing = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            listing = try await service.fetchListings()
            originalListing = listing
        } catch {
            print("DEBUG: Failed to fetch listing with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingForLocation() {
        let searchLocation = searchLocation.lowercased()
        let filteredListings = originalListing.filter({
            $0.city.lowercased().contains(searchLocation) ||
            $0.state.lowercased().contains(searchLocation)
        })
        self.listing = filteredListings.isEmpty ? originalListing : filteredListings
    }
}
