//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 5.02.2025.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
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
                        ForEach(viewModel.listing) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listings: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self) { listing in
                    
                    if #available(iOS 16.0, *) {
                        ListingDetailView(listing: listing)
                            .toolbar(.hidden)
                    } else {
                        ListingDetailView(listing: listing)
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
