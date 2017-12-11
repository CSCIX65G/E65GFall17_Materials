//
//  SecondViewController.swift
//  Lecture08
//
//  Created by Van Simmons on 10/19/17.
//  Copyright © 2017 Harvard University. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let center = NotificationCenter.default
        let name = Notification.Name(rawValue: "EngineUpdate")
        center.addObserver(
            self,
            selector: #selector(engineUpdate(notification:)),
            name: name,
            object: nil
        )

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func engineUpdate(notification: Notification) {
        print(notification)
    }

}

