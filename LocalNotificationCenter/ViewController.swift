//
//  ViewController.swift
//  LocalNotificationCenter
//
//  Created by Insik Cho on 12/7/18.
//  Copyright © 2018 Insik Cho. All rights reserved.
//

import UIKit
import UserNotifications
import MapKit

extension Notification.Name {
    static let peru = Notification.Name("foodService")
}

class ViewController: UIViewController {

    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Your coordinates go here (lat, lon)
        print ("I am in ViewController")
        let geofenceRegionCenter =  CLLocationCoordinate2DMake(37.5891182,-122.3390065)
        
        /* Create a region centered on desired location,
         choose a radius for the region (in meters)
         choose a unique identifier for that region */
        let geofenceRegion = CLCircularRegion(center: geofenceRegionCenter,
                                              radius: 100000000,
                                              identifier: "HDQ")
        
        geofenceRegion.notifyOnEntry = true
        geofenceRegion.notifyOnExit = true
        
        print(locationManager.location?.coordinate.latitude)
        self.locationManager.startMonitoring(for: geofenceRegion)
        print(self.locationManager.requestLocation())
    }


}

