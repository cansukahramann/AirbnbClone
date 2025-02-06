//
//  PropertyInfoView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct PropertyInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Miami Villa")
                .font(.title)
                .fontWeight(.semibold)
            
            VStack(alignment: .leading) {
                HStack(spacing: 2) {
                    StarRatingView()
                    
                    Text(" - ")
                    
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                
                Text("Miami, Florida")
            }
            .font(.caption)
        }
        .padding(.leading)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    PropertyInfoView()
}
