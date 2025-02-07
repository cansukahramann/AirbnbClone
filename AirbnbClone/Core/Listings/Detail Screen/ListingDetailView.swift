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
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                ZStack(alignment: .topLeading) {
                    ListingImageCarouseView()
                        .frame(height: 320)
                    backButton()
                }
                
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
            .toolbarVisibility(.hidden, for: .tabBar)
            .ignoresSafeArea()
            .padding(.bottom)
            BookingFooterView()
            
        }
    }
    
    func backButton() -> some View {
        Button {
            dismiss() 
        } label: {
            Image(systemName: "chevron.left")
                .foregroundStyle(.black)
                .background {
                    Circle()
                        .fill(.white)
                        .frame(width: 32, height: 32)
                }
                .padding(32)
        }
        
    }
}

#Preview {
    ListingDetailView()
}


