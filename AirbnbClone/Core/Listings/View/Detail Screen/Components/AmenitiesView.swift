//
//  AmenitiesView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct AmenitiesView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            ForEach(listing.amenities) { amenity in
                HStack(spacing: 4) {
                    Image(systemName: amenity.imageName)
                        .frame(width: 32)
                    Text(amenity.title)
                        .font(.footnote)
                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    AmenitiesView(listing: DeveloperPreview.shared.listings[0])
}
