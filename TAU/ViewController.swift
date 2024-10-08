//
//  ViewController.swift
//  TAU
//
//  Created by Shashikant Jagtap on 09/02/2019.
//  Copyright © 2019 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {  // Conform to UITextFieldDelegate

    @IBOutlet weak var welcomeToXCUITest: UILabel!
    @IBOutlet weak var enterCity: UILabel!
    @IBOutlet weak var cityValue: UITextField!
    @IBOutlet weak var thanksMessage: UILabel!
    @IBOutlet weak var TAUImage: UIImageView!

    @IBAction func enrollButton(_ sender: Any) {
        thanksMessage.isHidden = false
        
        if cityValue.text == "" {
            thanksMessage.text = "Please Enter City"
            thanksMessage.textColor = UIColor.red
        } else {
            thanksMessage.text = "Thanks for Joining!"
            thanksMessage.textColor = UIColor.green
            cityValue.text = ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        thanksMessage.isHidden = true
        cityValue.delegate = self  // Set the delegate
    }

    // UITextFieldDelegate method to dismiss the keyboard when the return key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()  // Dismiss the keyboard
        return true
    }
}
