//
//  HomeController.swift
//  QuantityMeasurement
//
//  Created by Macbook on 09/06/23.
//

import UIKit

var calculatePound = Double()
var calculateKg = Double()

class HomeController: UIViewController {
    var isSwitched = 0
    @IBOutlet weak var fromUnit: UILabel!
    
    @IBOutlet weak var toUnit: UILabel!
    
    @IBOutlet weak var input1: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func segmentedControlAction(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex{
        case 0: isSwitched = 0
            fromUnit.text = "Kilogram"
            toUnit.text = "Pounds"
        default: isSwitched = 1
            fromUnit.text = "Pounds"
            toUnit.text = "Kilogram"
        }
    }
    @IBAction func convertUnit(_ sender: Any) {
        
        switch isSwitched{
        case 0: kgToPounds()
        default: poundsToKg()
            
        }
        
    }
    func kgToPounds(){
        if let input = Double(input1.text!) {
            
            calculatePound = input * 2.205
            
            let newResult = String(format: "%.2f", arguments: [calculatePound])
            
            result.text = "\(newResult)"
        } else {
            
        }
    }
    func poundsToKg(){
        let input = Double(input1.text!)
        
        calculateKg = input! / 2.205
        
        let newResult = String(format: "%.2f", arguments: [calculateKg])
        
        result.text = "\(newResult)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
