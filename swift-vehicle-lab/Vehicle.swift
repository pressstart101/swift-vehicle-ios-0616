//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0
    
    init(name: String, weight: Double, maxSpeed: Double){
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast(){
        self.speed = maxSpeed
    }
    
    func halt(){
        self.speed = 0
    }
    
    func accelerate(){
        let temp = speed + (maxSpeed * 0.1)
        if temp <= maxSpeed {
            self.speed = temp
        }
    }
    
    func decelerate(){
        let temp = speed - (maxSpeed * 0.1)
        if temp >= 0 {
            self.speed = temp
        }
    }
    
    func turnRight(){
        if self.speed > 0 {
            self.speed = speed/2
        


        let temp = heading + 90
        if temp < 360{
            self.heading = temp
        }else{
            self.heading = temp%360
        }
}
    }
    
    func turnLeft(){
        if self.speed > 0 {
            self.speed = speed/2
        
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
