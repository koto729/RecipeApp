//
//  Marker.swift
//  RecipeApp
//
//  Created by KoWingTo on 13/1/2023.
//

import Foundation
import CoreLocation

struct AnnotationItem: Identifiable{
    let id = UUID()
    var title: String
    var coordomate: CLLocationCoordinate2D
    
    init(_ title: String, latitude: Double, longitude: Double){
        self.title = title
        coordomate = CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
    }
}
var annotations: [AnnotationItem] = [
    .init("Wellcome", latitude: 22.387815771908617, longitude: 114.19607414667806),
    .init("DS Groceries", latitude: 22.387962959244813, longitude:  114.1955750523751)
]
