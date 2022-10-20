//
//  TextEditor.swift
//  Sample iOS
//
//  Created by Lalit on 24/01/18.
//  Copyright © 2018 BrowserStack. All rights reserved.
//

import UIKit

class LoginController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var UsernameField: UITextField!
    
    @IBOutlet weak var PasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func submitFields(_ sender: Any) {
//        let fullName = UsernameField.text! + " " + PasswordField.text!
//        UsernameLabel.text = fullName
//        
//        print (fullName)
        
        
        
    }
    
    // This function is called before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // Get a reference to the second view controller
        let secondViewController = segue.destination as! LoginCompletedController

        // Set a variable in the second view controller with the String to pass
        
        secondViewController.username = UsernameField.text!
        secondViewController.password = PasswordField.text!
    }
    
}
