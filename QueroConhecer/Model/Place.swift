//
//  Place.swift
//  QueroConhecer
//
//  Created by Ian Pablo on 05/09/20.
//  Copyright © 2020 Ian Pablo. All rights reserved.
//

import Foundation
import MapKit

struct Place: Codable {
    let name: String
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    let address:String
    
    var coordinate: CLLocationCoordinate2D{
        return CLLocationCoordinate2D.init(latitude: latitude, longitude: longitude)
    }
    
    static func getFormattedAddress(with placemark: CLPlacemark) -> String{
        var address = ""
        if let street = placemark.thoroughfare{
            address += street
        }
        if let number = placemark.subThoroughfare{
            address += ", \(number)"
        }
        if let subLocality = placemark.subLocality{
            address += ", \(subLocality)"
        }
        if let city = placemark.locality{
            address += "\n\(city)"
        }
        if let state = placemark.administrativeArea{
            address += " - \(state)"
        }
        if let country = placemark.country{
                  address += " - \(country)"
              }
        if let postalCode = placemark.postalCode{
            address += "\nCEP: \(postalCode)"
        }
      
        return address
    }
    
}

extension Place: Equatable{
    static  func ==(lhs: Place, rhs: Place) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}

