//
//  Racecar.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        let temp = speed + (maxSpeed * 0.2)
        if temp <= maxSpeed {
            self.speed = temp
        }
    }
    
    
    override func decelerate() {
        if self.speed > 0{
        let temp = speed - (maxSpeed * 0.2)
        if temp >= 0 {
            self.speed = temp
        }
        }
    }
    
    func driftRight(){
        if self.speed > 0 {
            self.speed = speed * 0.75
        
        
        
        let temp = heading + 90
        if temp < 360{
            self.heading = temp
        }else{
            self.heading = temp%360
        }
            }
    }
    
    func driftLeft(){
        if self.speed > 0 {
            self.speed = speed * 0.75
        
        let temp = heading - 90
        if self.heading > 90 && self.heading < 360{
            self.heading = temp
        }else if self.heading > 360 {
            self.heading = temp%360
        }else if self.heading < 90{
            self.heading = temp + 360
        }else if self.heading == 360{
            self.heading = 0
            }
    }
    }
    
    
}