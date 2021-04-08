//
//  ZipCodeFieldDelegate.swift
//  DelegateChallengeApp
//
//  Created by June2020 on 4/7/21.
//

import Foundation
import UIKit

class ZipCodeFieldDelegate : NSObject, UITextFieldDelegate {
    
    var stringNumbers:[String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    var newText: String
    newText = textField.text!
    
    if stringNumbers.contains(string) && (newText.count + string.count) < 6 {
        newText = newText + string
        return true
    }
    else {
        // newText.removeLast()
        return false
    }
   
   
}
}
