//
//  TextEditor.swift
//  Sample iOS
//
//  Created by Lalit on 24/01/18.
//  Copyright © 2018 BrowserStack. All rights reserved.
//

import UIKit

class LoginCompletedController: UIViewController, UITextFieldDelegate {
    
    var username: String = ""
    var password: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = .white
        
        let ahahImage = UIImage(named: "AhAhAh.png")
        let welcomeImage = UIImage(named: "WelcomeJP.png")
        
        let myImageView:UIImageView = UIImageView()
        myImageView.contentMode = UIView.ContentMode.scaleAspectFit
        myImageView.frame.size.width = 300
        myImageView.frame.size.height = 500
        myImageView.center = self.view.center
        
        if (username == "correct" && password == "please") {
            myImageView.image = welcomeImage
        }
        else {
            myImageView.image = ahahImage
        }
        view.addSubview(myImageView)
        
        self.view = view
    }
    
}
