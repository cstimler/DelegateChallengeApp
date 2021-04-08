//
//  ViewController.swift
//  DelegateChallengeApp
//
//  Created by June2020 on 4/7/21.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var lock: UISwitch!
        
    
    let zipCodeDelegate = ZipCodeFieldDelegate()
    let cashTextDelegate = CashTextFieldDelegate()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the three delegates
        self.textField1.delegate = zipCodeDelegate
        self.textField2.delegate = cashTextDelegate
        self.textField3.delegate = self
    }


    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText: String
        newText = textField.text!
        
        if lock.isOn {
            return false
        } else {
            newText = newText + string
            return true
        
        }
            
        }

    
    
}

