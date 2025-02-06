//
//  HostInfoView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct HostInfoView: View {
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire villa hosted by John Smith111")
                    .font(.headline)
                //                    .frame(width: 250, alignment: .leading)
                
                HStack(spacing: 2) {
                    Text("4 guests -")
                    Text("4 bedrooms -")
                    Text("4 beds -")
                    Text("3 baths")
                }
                .font(.caption)
            }
            //            .frame(width: 300, alignment: .leading)
            .padding(.trailing, 25)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            //            Spacer()
            //                .frame(minWidth: 16, maxWidth: 16)
            
            Image("male-profile-photo")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
        }
        .padding()
    }
}

#Preview {
    HostInfoView()
}
