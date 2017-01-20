//
//  ViewController.swift
//  GMapsUX
//
//  Created by Amber Katyal on 19/01/17.
//  Copyright © 2017 Amber Apps. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.54, longitude: 152.34, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        self.view = mapView
        
        let marker = GMSMarker(position: CLLocationCoordinate2D(latitude: -33.54, longitude: 152.34))
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }

    
}

