//
//  CashTextFieldDelegate.swift
//  DelegateChallengeApp
//
//  Created by June2020 on 4/7/21.
//

import Foundation
import UIKit

class CashTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    static var pennies: Int = 0

func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    
    var newText: String = ""
    var dollars: Int
    var cents: Int
    
    //var x: Int = 0
    //newText = textField.text!
    if let x = Int(string) {
        print(x)
        print(CashTextFieldDelegate.pennies)
    CashTextFieldDelegate.pennies = (CashTextFieldDelegate.pennies)*10 + x
        print(CashTextFieldDelegate.pennies)
    
    // var penniesStart = CashTextFieldDelegate.pennies
        
        if (CashTextFieldDelegate.pennies == 0) {
            newText = "$0.00"
        } else if (CashTextFieldDelegate.pennies < 10) {
            newText = "$0.0" + String(CashTextFieldDelegate.pennies)
        } else if (CashTextFieldDelegate.pennies < 100) {
            newText = "$0." + String(CashTextFieldDelegate.pennies)
        } else {
            dollars = (CashTextFieldDelegate.pennies)/100
            cents = (CashTextFieldDelegate.pennies)%100
            newText = "$" + String(dollars) + "." + String(cents)
        }
    
        textField.text = newText
        return false
    }
    print(newText)
    
   // CashTextFieldDelegate.pennies = penniesStart
    
    if string.isEmpty {
      //  newText.removeLast()
        CashTextFieldDelegate.pennies = (CashTextFieldDelegate.pennies)/10
        return true
    }
    
    
    return false
}
}
