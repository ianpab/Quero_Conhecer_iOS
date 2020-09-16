//
//  PlaceAnnotation.swift
//  QueroConhecer
//
//  Created by Ian Pablo on 07/09/20.
//  Copyright © 2020 Ian Pablo. All rights reserved.
//

import Foundation
import MapKit

class PlaceAnnotation: NSObject, MKAnnotation {
    
    enum PlaceType {
        case place
        case point
    }
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var types: PlaceType
    var address: String?
    
    init(coordinate: CLLocationCoordinate2D, type: PlaceType) {
        self.coordinate = coordinate
        self.types = type
    }
    
}



