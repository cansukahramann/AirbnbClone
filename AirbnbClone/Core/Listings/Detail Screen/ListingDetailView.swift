//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 5.02.2025.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                ListingImageCarouseView()
                    .frame(height: 320)
                
                PropertyInfoView()
                Divider()
                
                HostInfoView()
                Divider()
                
                FeaturesView()
                Divider()
                
                BedroomsView()
                Divider()
                
                AmenitiesView()
                Divider()
                
                MapView()
                    .padding(.bottom, 72)
            }
            .ignoresSafeArea()
            .padding(.bottom)
            BookingFooterView()
        }
    }
}

#Preview {
    ListingDetailView()
}


