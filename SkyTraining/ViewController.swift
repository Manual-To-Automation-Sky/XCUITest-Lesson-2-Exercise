//
//  ViewController.swift
//  SkyTraining
//
//  Created by Gary Behan on 23/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AlertButton: UIButton!
    @IBOutlet weak var TextFieldButton: UIButton!
    @IBOutlet weak var FormButton: UIButton!
    @IBOutlet weak var DatePickerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func alertButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert Test", message: "This is a native alert", preferredStyle: UIAlertController.Style.alert)
       
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (result : UIAlertAction) -> Void in
            print("OK")
        }
    
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

