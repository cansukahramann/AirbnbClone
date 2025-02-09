//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 5.02.2025.
//

import SwiftUI

struct ListingItemView: View {
    
    let listings: Listing
    
    var body: some View {
        VStack {
            //images
            
            ListingImageCarouseView(listing: listings)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            detailInfo()
        }
        .padding()
    }
    
    func detailInfo() -> some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text("\(listings.city), \(listings.state)")
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                
                Text("12 ml away")
                    .foregroundStyle(.gray)
                
                Text("Nov 3 - 10")
                    .foregroundStyle(.gray)
                
                HStack(spacing: 4) {
                    Text("$\(listings.pricePerNight)")
                        .fontWeight(.semibold)
                    Text("night")
                }
                .foregroundStyle(.black)
            }
            
            Spacer()
            
            StarRatingView(rating: listings.rating)
        } 
        .font(.footnote)
    }
}

#Preview {
    ListingItemView(listings: DeveloperPreview.shared.listings[0])
}
