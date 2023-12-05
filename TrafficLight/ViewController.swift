//
//  ViewController.swift
//  TrafficLight
//
//  Created by No name on 04.12.2023.
//

import UIKit

enum TrafficLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var trafficLight = TrafficLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 100
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func startButtonDidTapped(){
        startButton.setTitle("NEXT", for: .normal)
        
        switch trafficLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            trafficLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            trafficLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            trafficLight = .red
        }
    }
}
