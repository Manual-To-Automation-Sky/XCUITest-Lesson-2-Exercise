//
//  TextEditor.swift
//  Sample iOS
//
//  Created by Lalit on 24/01/18.
//  Copyright © 2018 BrowserStack. All rights reserved.
//

import UIKit

class DatePickerController: UIViewController {
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.DatePicker.datePickerMode = .date
        self.DatePicker.preferredDatePickerStyle = .wheels
    }
    
    @IBAction func valueChangedOnDatePicker(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM, YYYY"
        let someDateString = dateFormatter.string(from: sender.date)
        dateLabel.text = someDateString
    }
    
}
