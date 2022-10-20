//
//  TextEditor.swift
//  Sample iOS
//
//  Created by Lalit on 24/01/18.
//  Copyright © 2018 BrowserStack. All rights reserved.
//

import UIKit

class SwitchesViewController: UIViewController {
    
    @IBOutlet weak var SwitchOne: UISwitch!
    @IBOutlet weak var SwitchTwo: UISwitch!
    @IBOutlet weak var SwitchThree: UISwitch!
    @IBOutlet weak var SwitchFour: UISwitch!
    @IBOutlet weak var SwitchFive: UISwitch!
    
    @IBOutlet weak var SwitchOneLabel: UILabel!
    @IBOutlet weak var SwitchTwoLabel: UILabel!
    @IBOutlet weak var SwitchThreeLabel: UILabel!
    @IBOutlet weak var SwitchFourLabel: UILabel!
    @IBOutlet weak var SwitchFiveLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func switchOneTurnedOn(_ sender: Any) {
        if(SwitchOne.isOn) {
            SwitchOneLabel.text = "On"
            SwitchOneLabel.textColor = UIColor.green
        } else {
            SwitchOneLabel.text = "Off"
            SwitchOneLabel.textColor = UIColor.red
        }
    }
    @IBAction func switchTwoTurnedOn(_ sender: Any) {
        if(SwitchTwo.isOn) {
            SwitchTwoLabel.text = "On"
            SwitchTwoLabel.textColor = UIColor.green
        } else {
            SwitchTwoLabel.text = "Off"
            SwitchTwoLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func switchThreeTurnedOn(_ sender: Any) {
        if(SwitchThree.isOn) {
            SwitchThreeLabel.text = "On"
            SwitchThreeLabel.textColor = UIColor.green
        } else {
            SwitchThreeLabel.text = "Off"
            SwitchThreeLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func switchFourTurnedOn(_ sender: Any) {
        if(SwitchFour.isOn) {
            SwitchFourLabel.text = "On"
            SwitchFourLabel.textColor = UIColor.green
        } else {
            SwitchFourLabel.text = "Off"
            SwitchFourLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func switchFiveTurnedOn(_ sender: Any) {
        if(SwitchFive.isOn) {
            SwitchFiveLabel.text = "On"
            SwitchFiveLabel.textColor = UIColor.green
        } else {
            SwitchFiveLabel.text = "Off"
            SwitchFiveLabel.textColor = UIColor.red
        }
    }
    
    
    
    
    
    
    
    
    
}
