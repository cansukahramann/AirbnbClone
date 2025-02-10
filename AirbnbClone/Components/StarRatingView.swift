//
//  StarRatingView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 5.02.2025.
//

import SwiftUI

struct StarRatingView: View {
    
    let rating: Double
    
    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            
            Text("\(rating.formattedWithOneDecimalPlace())")
                .fontWeight(.semibold)
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    StarRatingView(rating: 3.4)
}
