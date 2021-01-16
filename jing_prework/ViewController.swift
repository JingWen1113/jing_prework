//
//  ViewController.swift
//  jing_prework
//
//  Created by WenJing on 1/15/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get the Bill amount
                let bill = Double(billAmountTextField.text!) ?? 0
                //Calculate the tip and total
                let tipPercentages = [0.15, 0.18, 0.2]
                
                let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
                let total = bill + tip
                //Update the tip and total labels
                tipAmountLabel.text = String(format: "$%.2f", tip)
                totalLabel.text = String(format: "$%.2f", total)
    }
    

}
