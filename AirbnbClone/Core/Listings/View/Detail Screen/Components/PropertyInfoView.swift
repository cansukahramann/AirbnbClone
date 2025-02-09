//
//  PropertyInfoView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct PropertyInfoView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(listing.title)
                .font(.title)
                .fontWeight(.semibold)
            
            VStack(alignment: .leading) {
                HStack(spacing: 2) {
                    StarRatingView(rating: listing.rating)
                    
                    Text(" - ")
                    
                    Text("\(listing.reviews) reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                
                Text("\(listing.city), \(listing.state)")
            }
            .font(.caption)
        }
        .padding(.leading)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    PropertyInfoView(listing: DeveloperPreview.shared.listings[0])
}
