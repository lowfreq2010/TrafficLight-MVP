//
//  TrafficLightViewController.swift
//  TraficLights-MVP
//
//  Created by VNS on 25/09/2020.
//  Copyright © 2020 VNS. All rights reserved.
//

import UIKit

class TrafficLightViewController: UIViewController, TrafficLightPresenterDelegate {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightDataSource())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // hook up with presenter to get updates from
        trafficLightPresenter.setPresenterDelegate(trafficLightPresenterDelegate: self)
    }
    
    @IBAction func redLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Red")
    }
    
    @IBAction func yellowLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Yellow")
    }
    
    @IBAction func greenLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Green")
    }
    
    
    // update View with data sent by Presenter
    func displayTrafficLight(description:(String)) {
        descriptionLabel.text = description
    }
}
