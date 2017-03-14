//
//  ViewController.swift
//  TipCalculator
//
//  Created by Liu Yang on 3/13/17.
//  Copyright © 2017 Liu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var SplitNumber: UITextField!
    @IBOutlet weak var IndLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        defaults.synchronize()
        let tipPercentage = [0.18, 0.20, 0.25]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        let split = Double(SplitNumber.text!) ?? 1
        let ind = total/split
        let c = defaults.string(forKey:"CurSign")!
        
        TipLabel.text = String(format:"\(c)%0.2f",tip)
        TotalLabel.text = String(format:"\(c)%0.2f", total)
        IndLabel.text = String(format:"\(c)%0.2f", ind)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.synchronize()
        let tipPercentage = [0.18, 0.20, 0.25]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        let split = Double(SplitNumber.text!) ?? 1
        let ind = total/split
        let c = defaults.string(forKey:"CurSign")!
        
        TipLabel.text = String(format:"\(c)%0.2f",tip)
        TotalLabel.text = String(format:"\(c)%0.2f", total)
        IndLabel.text = String(format:"\(c)%0.2f", ind)
    }
    @IBAction func CalculateTipAgain(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.synchronize()
        let tipPercentage = [0.18, 0.20, 0.25]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        let split = Double(SplitNumber.text!) ?? 1
        let ind = total/split
        let c = defaults.string(forKey:"CurSign")!
        
        TipLabel.text = String(format:"\(c)%0.2f",tip)
        TotalLabel.text = String(format:"\(c)%0.2f", total)
        IndLabel.text = String(format:"\(c)%0.2f", ind)
    }

    @IBAction func CalculateSplit(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.synchronize()
        let tipPercentage = [0.18, 0.20, 0.25]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        let split = Double(SplitNumber.text!) ?? 1
        let ind = total/split
        let c = defaults.string(forKey:"CurSign")!
        
        TipLabel.text = String(format:"\(c)%0.2f",tip)
        TotalLabel.text = String(format:"\(c)%0.2f", total)
        IndLabel.text = String(format:"\(c)%0.2f", ind)
    }
    
}

