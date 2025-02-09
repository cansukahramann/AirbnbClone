//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 9.02.2025.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var listing = [Listing]() 
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            listing = try await service.fetchListings()
        } catch {
            print("DEBUG: Failed to fetch listing with error: \(error.localizedDescription)")
        }
    }
}
