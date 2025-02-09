//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Cansu Kahraman on 8.02.2025.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "John Smith",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 8,
              numberOfBeds: 4,
              latitude: -80.1936,
              longitude: 25.7850,
              address: "main street",
              city: "Miami",
              state: "Florida",
              title: "Miami villa",
              type: .villa,
              imageURLs: ["listing1.1","listing1.2","listing1.3", "listing1.4", "listing1.5"],
              rating: 4.9,
              pricePerNight: 900,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony],
              reviews: 50
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Sienna Harrington",
              ownerImageUrl: "profile5",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              latitude: -67.1936,
              longitude: 11.7850,
              address: "main2 street",
              city: "Miami",
              state: "Florida",
              title: "Aspen town house",
              type: .townhouse,
              imageURLs: ["listing2.1","listing2.2","listing2.3", "listing2.4"],
              rating: 3.9,
              pricePerNight: 567,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .tv, .kitchen],
              reviews: 29
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "East South",
              ownerImageUrl: "profile1",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              latitude: -37.1936,
              longitude: 21.7850,
              address: "maiiin street",
              city: "Los Angeles",
              state: "California",
              title: "melanie bootiful",
              type: .townhouse,
              imageURLs: ["listing3.1","listing3.2","listing3.3", "listing3.4"],
              rating: 4.6,
              pricePerNight: 800,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .kitchen, .tv],
              reviews: 483
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Lily Kensington",
              ownerImageUrl: "profile6",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              latitude: -67.1936,
              longitude: 11.7850,
              address: "main2 street",
              city: "Los Angeles",
              state: "California",
              title: "Aspen town house",
              type: .townhouse,
              imageURLs: ["listing4.1","listing4.2","listing4.3", "listing4.4", "listing4.5"],
              rating: 3.4,
              pricePerNight: 950,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .kitchen, .tv, .laundry],
              reviews: 29
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "James May",
              ownerImageUrl: "profile2",
              numberOfBedrooms: 2,
              numberOfBathrooms: 1,
              numberOfGuests: 4,
              numberOfBeds: 2,
              latitude: -67.1936,
              longitude: 11.7850,
              address: "387 W Center St, Richfield, UT 84701, USA",
              city: "Miami",
              state: "Florida",
              title: "Curated abode w/ close proximity to National Parks",
              type: .house,
              imageURLs: ["listing5.1", "listing5.2", "listing5.3", "listing5.4", "listing5.5"],
              rating: 4.5,
              pricePerNight: 219,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .office, .kitchen],
              reviews: 177
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Elena Montgomery",
              ownerImageUrl: "profile7",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              latitude: -67.1936,
              longitude: 11.7850,
              address: "main2 street",
              city: "Los Angeles",
              state: "California",
              title: "Aspen town house",
              type: .townhouse,
              imageURLs: ["listing6.1", "listing6.2", "listing6.3", "listing6.4"],
              rating: 4.0,
              pricePerNight: 700,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .kitchen, .office],
              reviews: 29
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Adam West",
              ownerImageUrl: "profile3",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              latitude: -67.1936,
              longitude: 11.7850,
              address: "main2 street",
              city: "Miami",
              state: "Florida",
              title: "Aspen town house",
              type: .townhouse,
              imageURLs: ["listing4.2","listing4.4","listing4.3", "listing4.1", "listing4.5"],
              rating: 4.2,
              pricePerNight: 750,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry],
              reviews: 29
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Isla Whitmore",
              ownerImageUrl: "profile8",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              latitude: -67.1936,
              longitude: 11.7850,
              address: "main2 street",
              city: "Miami",
              state: "Florida",
              title: "Aspen town house",
              type: .townhouse,
              imageURLs: ["listing2.2","listing2.3", "listing2.4"],
              rating: 3.9,
              pricePerNight: 700,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .pool],
              reviews: 29
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "North borth",
              ownerImageUrl: "profile4",
              numberOfBedrooms: 2,
              numberOfBathrooms: 1,
              numberOfGuests: 6,
              numberOfBeds: 9,
              latitude: -30.1936,
              longitude: 11.7850,
              address: "elmore street",
              city: "Los Angeles",
              state: "California",
              title: "melanie bootiful",
              type: .townhouse,
              imageURLs: ["listing3.4","listing3.","listing3.2", "listing3.1"],
              rating: 4.4,
              pricePerNight: 780,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .kitchen, .tv],
              reviews: 882
             )
    ]
}


