//
//  HomeController2.swift
//  QuantityMeasurement
//
//  Created by Macbook on 10/06/23.
//

import UIKit

var calculateMiles = Double()
var calculateKm = Double()

class HomeController2: UIViewController {
    var isSwitched = 0
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var input2: UITextField!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func segmentControlAction(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex{
        case 0: isSwitched = 0
            label1.text = "Kilometer"
            label2.text = "Miles"
        default: isSwitched = 1
            label1.text = "Miles"
            label2.text = "Kilometer"
        }
    }
    
    @IBAction func convertUnit(_ sender: Any) {
        switch isSwitched{
            case 0: kmToMiles()
            default: milesToKm()
        }
    }
    
    func kmToMiles(){
        let input = Double(input2.text!)
        
        calculateMiles = input! * 0.6214
        
        let newResult = String(format: "%.2f", arguments: [calculateMiles])
        
        result.text = "\(newResult)"
    }
    func milesToKm(){
        let input = Double(input2.text!)
        
        calculateKm = input! / 0.6214
        
        let newResult = String(format: "%.2f", arguments: [calculateKm])
        
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
