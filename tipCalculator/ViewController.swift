//
//  ViewController.swift
//  tipCalculator
//
//  Created by Jing Li on 1/21/20.
//  Copyright © 2020 Jing Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billView: UIView!
    
    @IBOutlet weak var tipAndTotalView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billField.becomeFirstResponder()
    }

    @IBOutlet weak var tipBar: UINavigationItem!
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount
        let bill = Double(billField.text!) ?? 0
        // Calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // Update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func showTipAndTotal(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {self.tipAndTotalView.transform = CGAffineTransform(translationX: 0, y: -240); self.billView.transform = CGAffineTransform(translationX: 0, y: -150)
        })
    }
    
}

