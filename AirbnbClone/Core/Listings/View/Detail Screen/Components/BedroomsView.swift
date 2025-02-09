//
//  BedroomsView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct BedroomsView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll sleep")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1 ... listing.numberOfBedrooms, id: \.self) { bedroom in
                        VStack{
                            Image(systemName: "bed.double")
                            Text("Bedroom \(bedroom)")
                        }
                        .frame(width: 132, height: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .scrollTargetBehavior(.paging)
        }
        .padding()
    }
}

#Preview {
    BedroomsView(listing: DeveloperPreview.shared.listings[0])
}
