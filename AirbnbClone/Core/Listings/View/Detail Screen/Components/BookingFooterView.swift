//
//  BookingFooterView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct BookingFooterView: View {
    
    let listing: Listing
    
    var body: some View {
        HStack {
            VStack(alignment: .leading)  {
                Text("$\(listing.pricePerNight)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Total before taxes")
                    .font(.footnote)
                
                Text("Oct 15 - 20")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .underline()
            }
            
            Spacer()
            Button {
                
            } label: {
                Text("Reserve")
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 140, height: 40)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding()
        }
        .padding(.horizontal, 23)
        .background(Color.white)
    }
}

#Preview {
    BookingFooterView(listing: DeveloperPreview.shared.listings[0])
}
