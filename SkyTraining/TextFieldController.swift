//
//  TextEditor.swift
//  Sample iOS
//
//  Created by Lalit on 24/01/18.
//  Copyright © 2018 BrowserStack. All rights reserved.
//

import UIKit

class TextFieldController: UIViewController, UITextFieldDelegate {
  
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var submittedTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TextField.delegate = self
    }
    
    @IBAction func textFieldPrimaryActionTriggered(_ sender: Any) {
        print("return pressed")
        submittedTextLabel.text = TextField.text
        
    }
    
    @IBAction func valueChanged(_ sender: Any) {
        submittedTextLabel.text = TextField.text
    }
    
}
