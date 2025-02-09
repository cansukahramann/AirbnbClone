//
//  FeaturesView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct FeaturesView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(listing.features) { feature in
                HStack(spacing: 12) {
                    Image(systemName: feature.imageName)
                    
                    VStack(alignment: .leading) {
                        Text(feature.title)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text(feature.subTitle)
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    FeaturesView(listing: DeveloperPreview.shared.listings[0])
}
