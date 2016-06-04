//
//  ViewController.swift
//  RedVsBlue
//
//  Created by Michael Brown on 6/4/16.
//  Copyright © 2016 Incipire, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueImage: UIImageView!
    @IBOutlet weak var redImage: UIImageView!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleBlue(sender: AnyObject) {
        blueImage.hidden = !blueImage.hidden
        blueButton.setTitle(blueImage.hidden ? "Show Blue" : "Hide Blue", forState:.Normal)
        
    }

    @IBAction func toggleRed(sender: AnyObject) {
        redImage.hidden = !redImage.hidden
        redButton.setTitle(redImage.hidden ? "Show Red" : "Hide Red", forState: .Normal)
    }
}

