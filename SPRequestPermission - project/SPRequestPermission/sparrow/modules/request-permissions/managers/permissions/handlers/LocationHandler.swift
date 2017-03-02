//
//  LocationHandler.swift
//  SPRequestPermission
//
//  Created by David Nagy on 2017-03-02.
//  Copyright © 2017 Ivan Vorobei. All rights reserved.
//

import Foundation
import MapKit

class LocationHandler: NSObject, AuthorizationHandlerInterface, CLLocationManagerDelegate {
    
    static var shared:LocationHandler?
    
    lazy var locationManager:CLLocationManager =  {
        return CLLocationManager()
    }()
    
    var complectionHandler:AuthorizationHandlerCompletionBlock?

    override init() {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status == .notDetermined {
            return
        }
        
        if let complectionHandler = complectionHandler {
            complectionHandler(isAuthorized())
        }
    }
    
    func requestPermission(_ complectionHandler: @escaping AuthorizationHandlerCompletionBlock) {
        self.complectionHandler = complectionHandler
        
        let CLAuthStatus = CLLocationManager.authorizationStatus()
        if(CLAuthStatus == .notDetermined) {
            locationManager.delegate = self
            locationManager.requestAlwaysAuthorization();
        }else {
            complectionHandler(isAuthorized())
        }
    }
    
    func isAuthorized() -> Bool {
        let status = CLLocationManager.authorizationStatus()
        if status == .authorizedAlways {
            return true
        }
        if status == .authorizedWhenInUse {
            return true
        }
        return false
    }
    
    deinit {
        locationManager.delegate = nil
    }
}
