//
//  TextEditor.swift
//  Sample iOS
//
//  Created by Lalit on 24/01/18.
//  Copyright © 2018 BrowserStack. All rights reserved.
//

import UIKit

class TextEditor: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var FirstNameField: UITextField!
    @IBOutlet weak var LastNameField: UITextField!
    @IBOutlet weak var EmailAddressField: UITextField!
    
    @IBOutlet weak var nameEnteredLabel: UILabel!
    @IBOutlet weak var emailEnteredLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func submitFields(_ sender: Any) {
        let fullName = FirstNameField.text! + " " + LastNameField.text!
        
        print (fullName)
        nameEnteredLabel.text! = nameEnteredLabel.text! + " " + fullName
        
        emailEnteredLabel.text! = emailEnteredLabel.text! + " " + EmailAddressField.text!
    }
    
}
