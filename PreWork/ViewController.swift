//
//  ViewController.swift
//  PreWork
//
//  Created by SHANK on 2/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameTextField: UITextField!
    
    
    @IBOutlet weak var LastNameTextField: UITextField!
    
    
    @IBOutlet weak var SchoolNameTextField: UITextField!
    
    
    @IBOutlet weak var YearSegementedControl: UISegmentedControl!
    
    @IBOutlet weak var PetCounterLabel: UILabel!
    
    @IBOutlet weak var morePetStepper: UIStepper!
    
    @IBOutlet weak var morePetSwitch: UISwitch!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        PetCounterLabel.text = "\(Int(sender.value))"

    }
    
    
    @IBAction func IntroduceSelf(_ sender: UIButton) {
        let year = YearSegementedControl.titleForSegment(at: YearSegementedControl.selectedSegmentIndex)
        
        let introduction =  " My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!).I am currently in my \(year!) year and I own \(PetCounterLabel.text!) dogs. It is \(morePetSwitch.isOn) that I want more pets. "
        
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        
        present(alertController, animated: true, completion: nil)
        

    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

