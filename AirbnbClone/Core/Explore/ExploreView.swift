//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 5.02.2025.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
        
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack {
                        ForEach(0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    
                    if #available(iOS 16.0, *) {
                        ListingDetailView()
                            .toolbar(.hidden)
                    } else {
                        ListingDetailView()
                            .navigationBarHidden(true)
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
