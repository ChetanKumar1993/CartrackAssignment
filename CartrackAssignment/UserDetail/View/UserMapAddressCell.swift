//
//  UserMapAddressCell.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 01/08/22.
//

import SwiftUI
import MapKit

struct UserMapAddressCell: View {
    
    var latitude: Double
    var longitude: Double
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))
    
    var body: some View {
        VStack {
            Map(coordinateRegion:$mapRegion)
                .frame(height: 250.0, alignment: .center)
            
        }
        
    }
}

struct UserMapAddressCell_Previews: PreviewProvider {
    static var previews: some View {
        UserMapAddressCell(latitude: -37.3159, longitude: 81.1496)
    }
}
