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
    .init("DS Groceries", latitude: 22.387962959244813, longitude:  114.1955750523751),
    .init("華潤萬家便利超市", latitude: 22.385423374732127, longitude:  114.19890099146608),
    .init("U Select", latitude: 22.385125764140238, longitude:  114.19865422824657),
    .init("Kai Bo Food Supermarket", latitude: 22.384993699207627, longitude:  114.1916343567846),
    .init("PARKnSHOP ", latitude: 22.38746786849196, longitude: 114.20272644119126)
]
