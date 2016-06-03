//
//  ViewController.swift
//  SuperCool
//
//  Created by Michael Brown on 6/3/16.
//  Copyright © 2016 Incipire, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var coolLogo: UIImageView!
    @IBOutlet weak var uncoolButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func makeMeNotSoUncol(sender: AnyObject) {
        coolLogo.hidden = false
        backgroundImage.hidden = false
        uncoolButton.hidden = true
    }

}

