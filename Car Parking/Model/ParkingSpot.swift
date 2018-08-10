//
//  ParkingSpot.swift
//  Car Parking
//
//  Created by SCL IT on 09/08/18.
//  Copyright © 2018 Nikhil. All rights reserved.
//

import UIKit
import MapKit
import Contacts

class ParkingSpot: NSObject, MKAnnotation {

    let title: String?
    let locationName: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, coordinate: CLLocationCoordinate2D){
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
    }
    
    var subtitle: String?{
        return locationName
    }
    
    // pass gps coordinate with latitude and longitude
    func mapItem(location: CLLocationCoordinate2D) -> MKMapItem{
        // gives us a string value containing the street name
        let addressDictionary = [String(CNPostalAddressStreetKey): subtitle]
        let placemark = MKPlacemark(coordinate: location, addressDictionary: addressDictionary)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = title
        
        return mapItem
    }
    
}
