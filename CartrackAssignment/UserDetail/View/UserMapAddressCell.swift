//
//  UserMapAddressCell.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import SwiftUI
import MapKit

struct UserMapAddressCell: View {
    
    @State private var region : MKCoordinateRegion
    var coordinate: CLLocationCoordinate2D
    
    init(coordinate : CLLocationCoordinate2D) {
            self.coordinate = coordinate
            _region = State(initialValue: MKCoordinateRegion(center: coordinate,
                                                                 span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)))
        }
 
    var body: some View {
        VStack {
            Map(coordinateRegion: .constant(MKCoordinateRegion(center: coordinate,
                                                                       span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))),
                        showsUserLocation: true,
                        annotationItems: [Marker(location: MapMarker(coordinate: coordinate))]) { marker in
                            marker.location
                    }.frame(height: 250.0, alignment: .center)
        }
    }
}

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}
