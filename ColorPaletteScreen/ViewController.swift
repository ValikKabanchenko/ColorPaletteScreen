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
    
    func updateViewMixed() {
        colorMixed.backgroundColor = UIColor.init(red: CGFloat(sliderOutletRed.value/255), green: CGFloat(sliderOutletGreen.value/255), blue: CGFloat(sliderOutletBlue.value/255), alpha: 1.0)
    }
    
    @IBAction func sliderRed(_ sender: Any) {
        updateViewMixed()
        
        
        updateSliderRed()
    }
    func updateSliderRed() {
        currentlySelectedValueRed.text = "\(Int(sliderOutletRed.value))"
    }
    
    
    @IBAction func sliderGreen(_ sender: Any) {
        updateViewMixed()
        
        updateSliderGreen()
    }
    func updateSliderGreen() {
        currentlySelectedValueGreen.text =
        "\(Int(sliderOutletGreen.value))"
    }
    
    
    @IBAction func sliderBlue(_ sender: Any) {
        updateViewMixed()
        
        updateSliderBlue()
    }
    func updateSliderBlue() {
        currentlySelectedValueBlue.text =
        "\(Int(sliderOutletBlue.value))"
    }
    
    
    
    @IBOutlet weak var colorMixed: UIView!
    
    
  
    
    
   
    
    
    @IBAction func allSliderMin(_ sender: Any) {
        sliderOutletRed.value = 0
        sliderOutletGreen.value = 0
        sliderOutletBlue.value = 0
        
        updateSliderRed()
        
        updateSliderGreen()
        
        updateSliderBlue()
        
        updateViewMixed()
    }
    
    @IBAction func allSliderMedium(_ sender: Any) {
        sliderOutletRed.value =  sliderOutletRed.maximumValue / 2 + sliderOutletRed.minimumValue
        sliderOutletGreen.value =  sliderOutletGreen.maximumValue / 2 + sliderOutletGreen.minimumValue
        sliderOutletBlue.value =  sliderOutletBlue.maximumValue / 2 + sliderOutletBlue.minimumValue
        
        
        updateSliderRed()
        
        updateSliderGreen()
        
        updateSliderBlue()
        
        updateViewMixed()
    }
    
    @IBAction func allSliderMax(_ sender: Any) {
        sliderOutletRed.value = sliderOutletRed.maximumValue
        sliderOutletGreen.value = sliderOutletGreen.maximumValue
        sliderOutletBlue.value = sliderOutletBlue.maximumValue
        
        updateSliderRed()
        
        updateSliderGreen()
        
        updateSliderBlue()
        
        updateViewMixed()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateSliderRed()
        
        updateSliderGreen()
        
        updateSliderBlue()
        
        updateViewMixed()
        
    }


}

