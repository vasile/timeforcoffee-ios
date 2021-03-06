//
//  TFCBaseViewController.swift
//  timeforcoffee
//
//  Created by Christian Stocker on 24.02.15.
//  Copyright (c) 2015 Christian Stocker. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

public class TFCBaseViewController: UIViewController, TFCLocationManagerDelegate {
    public lazy var locManager: TFCLocationManager? = self.lazyInitLocationManager()
    
    public func lazyInitLocationManager() -> TFCLocationManager? {
        return TFCLocationManager(delegate: self)
    }
    
    public func locationFixed(coord: CLLocation?) {
        //do nothing here, you have to overwrite that
    }

    public func locationDenied(manager: CLLocationManager, err:NSError) {
    }

    public func locationStillTrying(manager: CLLocationManager, err:NSError) {
    }


}
