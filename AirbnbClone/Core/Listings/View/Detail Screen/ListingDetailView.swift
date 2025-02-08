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
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                ScrollView {
                    ZStack(alignment: .topLeading) {
                        ListingImageCarouseView()
                            .frame(height: 320)
                        
                        backButton()
                            .padding(.top, geo.safeAreaInsets.top)
                            .padding(.leading, 18)
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
    }
    
    func backButton() -> some View {
        Button {
            dismiss()
            print("clicked")
        } label: {
            Image(systemName: "chevron.left")
                .frame(width: 100, height: 100)
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
    ListingDetailView()
}


