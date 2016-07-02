//
//  ViewController.swift
//  TipPro
//
//  Created by Arjun Balasubramanian on 6/21/16.
//  Copyright © 2016 Arjun Balasubramanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ba: UITextField!
    @IBOutlet weak var tip: UISegmentedControl!
    @IBOutlet weak var ta: UITextField!
    @IBOutlet weak var total: UITextField!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    @IBAction func didChange(sender: AnyObject) {
        guard let billAmount = Double(ba.text!) else {
            //show error
            ba.text = ""
            ta.text = ""
            total.text = ""
            return
        }
        
        var tipPercentage = 0.0
        
        switch tip.selectedSegmentIndex {
        case 0:
            tipPercentage = 0.15
        case 1:
            tipPercentage = 0.18
        case 2:
            tipPercentage = 0.20
        default:
            break
        }
        
        let roundedBillAmount = round(100*billAmount)/100
        let tipAmount = roundedBillAmount * tipPercentage
        let roundedTipAmount = round(100*tipAmount)/100
        let totalAmount = roundedBillAmount + roundedTipAmount
        
        if (!ba.editing) {
            ba.text = String(format: "%.2f", roundedBillAmount)
        }
        ta.text = String(format: "%.2f", roundedTipAmount)
        total.text = String(format: "%.2f", totalAmount)
    }
    @IBAction func didChangemoney(sender: AnyObject) {
        guard let billAmount = Double(ba.text!) else {
            //show error
            ba.text = ""
            ta.text = ""
            total.text = ""
            return
        }
        
        var tipPercentage = 0.0
        
        switch tip.selectedSegmentIndex {
        case 0:
            tipPercentage = 0.15
        case 1:
            tipPercentage = 0.18
        case 2:
            tipPercentage = 0.20
        default:
            break
        }
        
        let roundedBillAmount = round(100*billAmount)/100
        let tipAmount = roundedBillAmount * tipPercentage
        let roundedTipAmount = round(100*tipAmount)/100
        let totalAmount = roundedBillAmount + roundedTipAmount
        
        if (!ba.editing) {
            ba.text = String(format: "%.2f", roundedBillAmount)
        }
        ta.text = String(format: "%.2f", roundedTipAmount)
        total.text = String(format: "%.2f", totalAmount)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ta.alpha = 1.0
        total.alpha = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

