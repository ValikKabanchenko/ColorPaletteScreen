//
//  ViewController.swift
//  ColorPaletteScreen
//
//  Created by Валик Кабанченко on 08.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentlySelectedValueRed: UILabel!
    @IBOutlet weak var currentlySelectedValueGreen: UILabel!
    @IBOutlet weak var currentlySelectedValueBlue: UILabel!
    
    @IBOutlet weak var sliderOutletRed: UISlider!
    @IBOutlet weak var sliderOutletGreen: UISlider!
    @IBOutlet weak var sliderOutletBlue: UISlider!
    
    
    @IBAction func sliderRed(_ sender: Any) {
        updateSliderRed()
    }
    func updateSliderRed() {
        currentlySelectedValueRed.text = "\(Int(sliderOutletRed.value))"
    }
    
    
    @IBAction func sliderGreen(_ sender: Any) {
        updateSliderGreen()
    }
    func updateSliderGreen() {
        currentlySelectedValueGreen.text =
        "\(Int(sliderOutletGreen.value))"
    }
    
    
    @IBAction func sliderBlue(_ sender: Any) {
        updateSliderBlue()
    }
    func updateSliderBlue() {
        currentlySelectedValueBlue.text =
        "\(Int(sliderOutletBlue.value))"
    }
    
    
    
    @IBOutlet weak var colorMixed: UIView!
    
    
  
    
    
   
    
    
    @IBAction func allSliderMin(_ sender: Any) {
    }
    
    @IBAction func allSliderMedium(_ sender: Any) {
    }
    
    @IBAction func allSliderMax(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        sliderOutletRed.value = (sliderOutletRed.minimumValue - sliderOutletRed.maximumValue) / 2 +
        sliderOutletRed.minimumValue
        
        
        sliderOutletGreen.value = (sliderOutletGreen.minimumValue - sliderOutletGreen.maximumValue) / 2 +
        sliderOutletGreen.minimumValue
        
        sliderOutletBlue.value = (sliderOutletBlue.minimumValue - sliderOutletBlue.maximumValue) / 2 +
        sliderOutletBlue.minimumValue
        
        updateSliderRed()
        updateSliderGreen()
        updateSliderBlue()
        
        
    }


}

