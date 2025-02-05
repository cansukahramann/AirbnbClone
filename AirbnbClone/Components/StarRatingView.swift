//
//  StarRatingView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 5.02.2025.
//

import SwiftUI

struct StarRatingView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            
            Text("4.86")
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    StarRatingView()
}
