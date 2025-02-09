//
//  HostInfoView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct HostInfoView: View {
    
    let listing: Listing
    
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
                    .font(.headline)
                //                    .frame(width: 250, alignment: .leading)
                
                HStack(spacing: 2) {
                    Text("\(listing.numberOfGuests) guests -")
                    Text("\(listing.numberOfBedrooms) bedrooms -")
                    Text("\(listing.numberOfBeds) beds -")
                    Text("\(listing.numberOfBathrooms) baths")
                }
                .font(.caption)
            }
            //            .frame(width: 300, alignment: .leading)
            .padding(.trailing, 25)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            //            Spacer()
            //                .frame(minWidth: 16, maxWidth: 16)
            
            Image(listing.ownerImageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
        }
        .padding()
    }
}

#Preview {
    HostInfoView(listing: DeveloperPreview.shared.listings[0])
}
