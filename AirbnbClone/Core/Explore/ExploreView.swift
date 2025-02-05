//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 5.02.2025.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
