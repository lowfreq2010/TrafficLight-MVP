//
//  TraficLights-MVP
//
//  Created by VNS on 20/09/2020.
//  Copyright © 2020 VNS. All rights reserved.
//
// Simple structure describing traffic light

import Foundation

struct TrafficLight {
    let colorName: String
    let description: String
    
    init(colorName:String, description:String) {
        self.colorName = colorName
        self.description = description
    }
}
