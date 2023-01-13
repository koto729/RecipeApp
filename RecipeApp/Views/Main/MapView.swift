//
//  MapView.swift
//  RecipeApp
//
//  Created by KoWingTo on 9/1/2023.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    private let lm = CLLocationManager()
    init() {
        lm.requestAlwaysAuthorization()
        lm.requestWhenInUseAuthorization()
    }
    @State private var showCallout = false
    @State private var selectedId = UUID()
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 22.390893824683147,
            longitude: 114.19805279389894
        ),
        latitudinalMeters: 1000,
        longitudinalMeters: 1000
    )
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region,showsUserLocation: true, annotationItems: annotations){annotation in
                MapAnnotation(coordinate: annotation.coordomate){
                    Image(systemName: "pin.fill")
                        .imageScale(.large)
                        .foregroundColor(.red)
                        .onTapGesture {
                            selectedId = annotation.id
                            showCallout = true
                        }
                        .overlay{
                            if showCallout, annotation.id == selectedId{
                                Callout(annotation: annotation)
                            }
                        }
                }
            }
                
        }
  
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
