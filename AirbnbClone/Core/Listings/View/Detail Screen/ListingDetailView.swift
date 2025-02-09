//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 5.02.2025.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                ScrollView {
                    ZStack(alignment: .topLeading) {
                        ListingImageCarouseView(listing: listing)
                            .frame(height: 320)
                        
                        backButton()
                            .padding(.top, geo.safeAreaInsets.top)
                            .padding(.leading, 18)
                    }
                    
                    PropertyInfoView(listing: listing)
                    Divider()
                    
                    HostInfoView(listing: listing)
                    Divider()
                    
                    FeaturesView(listing: listing)
                    Divider()
                    
                    BedroomsView(listing: listing)
                    Divider()
                    
                    AmenitiesView(listing: listing)
                    Divider()
                    
                    MapView(listing: listing)
                        .padding(.bottom, 72)
                }
                .toolbarVisibility(.hidden, for: .tabBar)
                .ignoresSafeArea()
                .padding(.bottom)
                BookingFooterView(listing: listing)
                
            }
        }
    }
    
    func backButton() -> some View {
        Button {
            dismiss()
            print("clicked")
        } label: {
            Image(systemName: "chevron.left")
                .frame(width: 40, height: 40)
                .foregroundStyle(.black)
                .background {
                    Circle()
                        .fill(.white)
                        
                }
                .contentShape(Circle())
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}


