//
//  TrafficLightPresenter.swift
//  TraficLights-MVP
//
//  Created by VNS on 20/09/2020.
//  Copyright © 2020 VNS. All rights reserved.
//
// Presenter class which does all heavy lifting work for preparing visual ddata to be displayed

import Foundation

// any view should conform to this protocol called from Presenter
protocol TrafficLightPresenterDelegate: class {
    func displayTrafficLight(description:(String))
}

class TrafficLightPresenter {
    private let trafficLightService:TrafficLightDataSource
    weak private var trafficLightPresenterDelegate : TrafficLightPresenterDelegate?
    
    init(trafficLightService:TrafficLightDataSource){
        self.trafficLightService = trafficLightService
    }
    
    func setPresenterDelegate(trafficLightPresenterDelegate:TrafficLightPresenterDelegate?){
        self.trafficLightPresenterDelegate = trafficLightPresenterDelegate
    }
    
    func trafficLightColorSelected(colorName:(String)){
        
        //get the ddata about traffic light and pass it to view delegate
        trafficLightService.getTrafficLight(colorName: colorName) {[weak self] traficLight in
            guard let traficLight = traficLight else {return}
            self?.trafficLightPresenterDelegate?.displayTrafficLight(description: traficLight.description)
        }
    }
}
