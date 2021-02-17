//
//  ViewController.swift
//  TConverter
//
//  Created by alex on 17.02.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.value = 0
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.thumbTintColor = UIColor.red
        }
    }
    @IBOutlet weak var foringateLbl: UILabel!
    @IBOutlet weak var celiciusLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        let value = Int(round(sender.value))
        celiciusLbl.text! = "\(value) C"
        foringateLbl.text = "\(value * 9/5 + 32) F"
    }


}

