//
//  ProfileOptionRowView.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 6.02.2025.
//

import SwiftUI

struct ProfileOptionRowView: View {
    
    let image: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: image)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRowView(image: "gear", title: "Settings")
}
