//
//  TemperatureController.swift
//  QuantityMeasurement
//
//  Created by Macbook on 15/06/23.
//

import UIKit

var calculatedegreeCelcius = Double()
var calculatedegreeFarenheit = Double()
var calculatedegreeKelvin = Double()
class TemperatureController: UIViewController {
    var selectedFromInput = 0
    var selectedToOutput = 0
    
    @IBOutlet weak var segmentedControlInput: UISegmentedControl!
    
    @IBOutlet weak var segmentedControlResult: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var inputLabel1: UITextField!
    @IBAction func segmentedControlInputAction(_ sender: Any) {
        switch segmentedControlInput.selectedSegmentIndex{
        case 0: selectedFromInput = 0
            
        case 1: selectedFromInput = 1
            
        default: selectedFromInput = 2
            
        }
    }
    
    @IBAction func segmentedControlResultAction(_ sender: Any) {
        switch segmentedControlResult.selectedSegmentIndex{
        case 0: selectedToOutput = 0
            
        case 1: selectedToOutput = 1
            
        default: selectedToOutput = 2
            
        }
    }
    
    @IBAction func convertBtnAction(_ sender: Any) {
        if(selectedFromInput != selectedToOutput){
            switch selectedToOutput{
            case 0: toCelcius()
            case 1: toFarenheit()
            default: toKelvin()
            }
        }
    }
    
    func toCelcius(){
        if let input = Double(inputLabel1.text!)
        {
            if(selectedFromInput == 1){
                calculatedegreeCelcius = (input - 32)/1.8000
            }
            else{
                calculatedegreeCelcius = input - 273.15
            }
                let newResult = String(format: "%.2f", arguments: [calculatedegreeCelcius])
                
                resultLabel.text = "\(newResult)"
        }
    }
    func toKelvin(){
        if let input = Double(inputLabel1.text!)
        {
            if(selectedFromInput == 1){
                calculatedegreeKelvin = (input + 459.67) * (5/9)
            }
            else{
                calculatedegreeKelvin = input + 273.15
            }
                let newResult = String(format: "%.2f", arguments: [calculatedegreeKelvin])
                
                resultLabel.text = "\(newResult)"
        }
    }
    func toFarenheit(){
        if let input = Double(inputLabel1.text!)
        {
            if(selectedFromInput == 0){
                calculatedegreeFarenheit = (input * 9/5) + 32
            }
            else{
                calculatedegreeFarenheit = (input - 273.15) * (9/5) + 32
            }
                let newResult = String(format: "%.2f", arguments: [calculatedegreeFarenheit])
                
                resultLabel.text = "\(newResult)"
        }
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
