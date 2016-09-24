//
//  ViewController.swift
//  ColorMakerSlider
//
//  Created by Gaurav Saraf on 9/24/16.
//  Copyright © 2016 Gaurav Saraf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSliderControl: UISlider!
    @IBOutlet var greenSliderControl: UISlider!
    @IBOutlet var blueSliderControl: UISlider!
    @IBOutlet var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateColor()
    }

    @IBAction func calculateColor() {
        if self.redSliderControl == nil {
            return
        }
        
        let r: CGFloat = CGFloat(redSliderControl.value)
        let g: CGFloat = CGFloat(greenSliderControl.value)
        let b: CGFloat = CGFloat(blueSliderControl.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

