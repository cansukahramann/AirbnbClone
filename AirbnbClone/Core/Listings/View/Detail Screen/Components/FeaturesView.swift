//
//  FeaturesView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct FeaturesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(0 ..< 2) { feature in
                HStack(spacing: 12) {
                    Image(systemName: "medal")
                    
                    VStack(alignment: .leading) {
                        Text("Superhost")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Superhosts are experience, highly rated hosts who are commited to providing great stars for guests")
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
    FeaturesView()
}
