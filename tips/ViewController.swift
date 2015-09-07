//
//  ViewController.swift
//  tips
//
//  Created by Dipesh Valia on 9/6/15.
//  Copyright (c) 2015 Dipesh Valia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipField: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabel2: UILabel!
    @IBOutlet weak var tipLabel2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel2.text = "$0.00"
        totalLabel2.text = "$0.00"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip =  billAmount * tipPercentage
        var total = billAmount + tip
        
        //tipLabel2.text = "$\(tip)"
        //totalLabel2.text = "$\(total)"
        
        tipLabel2.text = String(format: "$%.2f", tip)
        totalLabel2.text = String(format: "$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
}

