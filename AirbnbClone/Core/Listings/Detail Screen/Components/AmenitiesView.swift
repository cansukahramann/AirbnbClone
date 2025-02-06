//
//  AmenitiesView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct AmenitiesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            ForEach(0 ..< 5) { feature in
                HStack(spacing: 4) {
                    Image(systemName: "wifi")
                        .frame(width: 32)
                    Text("Wifi")
                        .font(.footnote)
                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    AmenitiesView()
}
