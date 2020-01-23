//
//  ViewController.swift
//  tip app
//
//  Created by George Martin on 11/3/1398 AP.
//  Copyright © 1398 Codepath projet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("hello")
        view.endEditing(true)
    }
    @IBAction func calculatetip(_ sender: Any) {
        
        //Get Bill amount
        let bill = Double(billField.text!) ?? 0
        
        //Calclate tip ane total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip and total labels
        tiplabel.text = String(format: "$%.2f", tip)
        totallabel.text = String(format: "$%.2f", total)
        
    }
}

