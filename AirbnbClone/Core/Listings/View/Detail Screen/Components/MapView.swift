//
//  MapView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let listing: Listing
    @State private var cameraPosition: MapCameraPosition
    
    init(listing: Listing) {
        self.listing = listing
        
        let region = MKCoordinateRegion(center: listing.city == "Los Angeles" ? .losAngeles : .miami, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll be")
                .font(.headline)
            
            Map(position: $cameraPosition)
                .frame(height: 200)
//                        .aspectRatio(1, contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }
}

#Preview {
    MapView(listing: DeveloperPreview.shared.listings[0])
}
