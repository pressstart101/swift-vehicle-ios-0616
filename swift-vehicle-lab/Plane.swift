//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool{
        if speed > 0 && altitude > 0{
            return true
        }
        return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff(){
        if altitude == 0{
            self.speed = maxSpeed * 0.1
            self.altitude = maxAltitude * 0.1
        }
    }
    
    func land(){
        self.speed = 0
        self.altitude = 0
    }
    
    func climb(){
        decelerate()
        let temp = self.altitude + (maxAltitude / 10)
        if temp <= maxAltitude && inFlight{
            self.altitude = temp
        }
    }
    
    func dive(){
        accelerate()
    let temp = self.altitude - (maxAltitude / 10)
        if temp >= 0 && inFlight{
        self.altitude = temp
        }
    }
    
    func bankRight(){
        if self.speed > 0 {
            self.speed = speed * 0.9
        
        
        
        let temp = heading + 45
        if temp < 360{
            self.heading = temp
        }else{
            self.heading = temp%360
        }
            }
    }
    
    func bankLeft(){
        if self.speed > 0 {
            self.speed = speed * 0.9
        
        let temp = heading - 45
        if self.heading > 45 && self.heading < 360{
            self.heading = temp
        }else if self.heading > 360 {
            self.heading = temp%360
        }else if self.heading < 45{
            self.heading = temp + 360
        }else if self.heading == 360{
            self.heading = 0
            }
            }
    }
    
}