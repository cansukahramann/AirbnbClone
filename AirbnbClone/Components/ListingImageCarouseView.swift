//
//  ListingImageCarouseView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 5.02.2025.
//

import SwiftUI

struct ListingImageCarouseView: View {
    
    let listing: Listing
    
    var body: some View {
        
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
        
    }
}

#Preview {
    ListingImageCarouseView(listing: DeveloperPreview.shared.listings[0])
}
