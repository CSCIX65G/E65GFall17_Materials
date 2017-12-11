//
//  ViewController.swift
//  Lecture13
//
//  Created by Van Simmons on 12/4/17.
//  Copyright © 2017 Harvard University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var value: Int = 0
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = "\(value)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func editingDidBegin(_ sender: UITextField) {
        print("began editing")
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        print("changed editing")
    }
    
    @IBAction func editingDidEnd(_ sender: UITextField) {
        print("ended editing")
        if let stringVal = textField.text {
            if let intVal = Int(stringVal) {
                value = intVal
            }
        } else {
            value = 0
        }
        textField.text = "\(value)"
    }
    
    @IBAction func step(_ sender: UIStepper) {
        value = Int(sender.value)
        textField.text = "\(value)"
    }
    
    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        print("tapped")
        textField.resignFirstResponder()
    }
    
}

