//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by johan.grenlund on 15.02.15.
//  Copyright (c) 2015 Oliven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoesSizeTextField: UITextField!
    
    @IBOutlet weak var womensConverrtadShoeSizelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//    let sizeFromTextField = menShoeSizeTextField.text
//    let numberFromTextField = sizeFromTextField.toInt()
//    var integerFromTextField = numberFromTextField!
        
        let sizeFromTextField = menShoeSizeTextField.text.toInt()!
        
        let  conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European size"
//
    }
    
    @IBAction func womensShoesSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoesSizeTextField.text as NSString).doubleValue)
        let constantConversion = 30.5
        
        womensConverrtadShoeSizelabel.hidden = false
        womensConverrtadShoeSizelabel.text = "\(sizeFromTextField)" + " in European size"
    }

}

