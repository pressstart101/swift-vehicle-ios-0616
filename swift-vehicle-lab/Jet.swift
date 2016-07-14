//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Jet: Plane {
    override func climb() {
        decelerate()
        let temp = self.altitude + (maxAltitude / 5)
        if temp <= maxAltitude && inFlight{
            self.altitude = temp
        }
    }
    
    override func dive() {
        accelerate()
        let temp = self.altitude - (maxAltitude / 5)
        if temp >= 0 && inFlight{
            self.altitude = temp
        }
    }
    func afterburner(){
    let temp = self.maxSpeed * 2
        if self.speed == maxSpeed{
        self.speed = temp
        }
    }
}