//
//  ViewController.swift
//  RVS_Section_2017-12-02
//
//  Created by Van Simmons on 12/2/17.
//  Copyright © 2017 Harvard University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var round: Int = 0
    var cumulativeLiving: Int = 0
    @IBOutlet weak var cumulativeLivingTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handle(gridNotification n: Notification) {
        if let grid = n.userInfo?["grid"] as? Grid {
            cumulativeLiving += grid.living.count
            cumulativeLivingTextField.text = "\(cumulativeLiving)"
            round += 1
        }
    }

}

