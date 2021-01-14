//
//  TrafficLightDataSource.swift
//  TraficLights-MVP
//
//  Created by VNS on 20/09/2020.
//  Copyright © 2020 VNS. All rights reserved.
//

import Foundation

class TrafficLightDataSource {
    
    func getTrafficLight(colorName:(String), callBack:(TrafficLight?) -> ()) {
        let trafficLights = [TrafficLight(colorName: "Red", description: "Stop"),
                             TrafficLight(colorName: "Green", description: "Go"),
                             TrafficLight(colorName: "Yellow", description: "About to change to red")
        ]
        
        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callBack(foundTrafficLight)
        } else {
            callBack(nil)
        }
    }
}
