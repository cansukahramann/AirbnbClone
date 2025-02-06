//
//  MapView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll be")
                .font(.headline)
            
            Map()
                .frame(height: 200)
//                        .aspectRatio(1, contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }
}

#Preview {
    MapView()
}
