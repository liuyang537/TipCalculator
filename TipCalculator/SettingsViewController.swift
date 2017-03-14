//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Liu Yang on 3/13/17.
//  Copyright © 2017 Liu Yang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var SplitText: UITextField!
    @IBOutlet weak var CurrencyControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func ChangeSplitDefault(_ sender: Any) {
        let split = Double(SplitText.text!) ?? 1
        let defaults = UserDefaults.standard
        defaults.set(split, forKey: "Split")
        defaults.synchronize()
//        SplitText.text = "\(split)"
    }
    
    @IBAction func ChangeCurrencyDefault(_ sender: Any) {
        let currencies = ["$","￥"];
        let currency = currencies[CurrencyControl.selectedSegmentIndex]
        let defaults = UserDefaults.standard
        defaults.set(currency, forKey:"CurSign")
        defaults.synchronize()
    }

}
