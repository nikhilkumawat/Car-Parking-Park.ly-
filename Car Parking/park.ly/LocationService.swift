//
//  LocationService.swift
//  Car Parking
//
//  Created by SCL IT on 09/08/18.
//  Copyright © 2018 Nikhil. All rights reserved.
//

import Foundation
import CoreLocation

class LocationService: NSObject, CLLocationManagerDelegate{
    static let instance = LocationService()
    
    var locationManager = CLLocationManager()
    var currentLocation: CLLocationCoordinate2D?
    
    override init(){
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = 50
        self.locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [AnyObject]!) {
        self.currentLocation = locationManager.location?.coordinate
    }
    
}
