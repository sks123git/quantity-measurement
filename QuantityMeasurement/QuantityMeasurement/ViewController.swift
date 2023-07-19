//
//  ViewController.swift
//  QuantityMeasurement
//
//  Created by Macbook on 09/06/23.
//

import UIKit

var quantities = ["Kilogram - Pound","Kilometer - Miles","Fahrenheit - Celcius - kelvin"]
var myIndex = 0
class ViewController: UIViewController {

    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quantities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = quantities[indexPath.row]
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 20
        cell.textLabel?.backgroundColor = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let segueIdentifier: String
        myIndex = indexPath.row
        
        switch myIndex{
        case 0:
            segueIdentifier = "segue1"
        case 1:
            segueIdentifier = "segue2"
        default:
            segueIdentifier = "segue3"
        }
        myTable.deselectRow(at: indexPath, animated: true)
        self.performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
}

