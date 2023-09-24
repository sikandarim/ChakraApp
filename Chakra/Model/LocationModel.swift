//
//  LocationModel.swift
//  Chakra
//
//  Created by Mariam Sikandari on 2023-07-14.
//

import Foundation
import MapKit

struct LocationModel: Codable, Identifiable, Equatable{
   
    let id: String
    let name: String
    let CityName: String
    let description: String
    let imageNames: [String]
    var latitude: Double
    var longitude: Double
    var link: String
    
    
    var location: CLLocationCoordinate2D {
      CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
}
