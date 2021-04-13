//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Marion Ano on 4/13/21.
//  Copyright © 2021 Marion Ano. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    //UHWO lat long: 21.356522325850733, -158.05621900337144
    
    //set up initial location (lat, long) for our map
    let initialLocation = CLLocation(latitude: 21.356522325850733, longitude: -158.05621900337144)
    
    //declare a region radius around our initialLocation
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        //add annotation in viewDidLoad
        let restaurantOne = restaurantAnnotation(title:"Kalapawai", type:"American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
    }
    
    func centerMapOnLocation(location:CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated:true)
        
    }


}

