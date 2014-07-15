//
//  ViewController.swift
//  location
//
//  Created by Mihir Kelkar on 7/12/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit
import MapKit
import corelocation

class ViewController: UIViewController, MKMapViewDelegate{
    
    
    
    @IBOutlet var mapView: MKMapView
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var userLocation:CLLocationCoordinate2D = mapView.userLocation.location.coordinate
        
        var latitudeDelta: CLLocationDegrees = 0.01
        var longitudeDelta: CLLocationDegrees = 0.01
        
        var theSpan: MKCoordinateSpan = MKCoordinateSpanMake(latitudeDelta, longitudeDelta)
        var theRegion: MKCoordinateRegion = MKCoordinateRegionMake(userLocation, theSpan)
        self.mapView.setRegion(theRegion, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

