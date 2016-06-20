//
//  ViewController.swift
//  Tapper
//
//  Created by Michael Brown on 6/12/16.
//  Copyright © 2016 Incipire, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var titleLogo: UIImageView!
    @IBOutlet weak var tapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    @IBAction func onPlayButtonPressed(sender: UIButton!){
        if tapsTxt.text != nil && tapsTxt.text != "" {
            titleLogo.hidden = true
            playButton.hidden = true
            tapsTxt.hidden = true
            
            tapButton.hidden = false
            countLabel.hidden = false
            
            maxTaps = Int(tapsTxt.text!)!
            currentTaps = 0
            updateTapsLabel()
        }
    }
    
    @IBAction func onTapButtonPressed(sender: AnyObject) {
        currentTaps += 1
        updateTapsLabel()
        
        if isGameOver(){
           restartGame()
        }
    }
    
    func updateTapsLabel(){
        countLabel.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        return currentTaps >= maxTaps
    }
    
    func restartGame(){
        maxTaps = 0
        tapsTxt.text = ""
        
        titleLogo.hidden = false
        playButton.hidden = false
        tapsTxt.hidden = false
        
        tapButton.hidden = true
        countLabel.hidden = true
    }
}

