//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Gilbert Macabuag on 9/11/23.
//

/*
 EVENT-DRIVEN PROGRAMMING
 
 The execution of code in an app is determined by events, either system events or user actions
 
 system events - events triggered by iOS, such as a View Controller loads
 
 user actions - events triggered by the user, such as clicking a button, swiping up, or shaking the phone
 */

import UIKit

class ViewController: UIViewController {

    /*
     @IBOutlet - connects an object on the Interface Builder (IB) canvas, such as a label, to your code.
     
     WARNING:
        DO NOT rename IBOutlets by typing to replace the outlet name in your Swift File. It will break the connection and cause your app to crash spectacularly and in a most un-friendly way. Instead, rename, high light the variable, right-click and REFACTOR -> RENAME.
     */
    @IBOutlet weak var awesomeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    /*
     viewDidLoad is triggered by a system event that runs each time this screen loads
     */
    override func viewDidLoad() {
        super.viewDidLoad()
    
        awesomeLabel.text = ""
    }

    /*
     showButtonPressed is triggered by a user action and runs each time the associated button is pressed
     */
    @IBAction func showButtonPressed(_ sender: UIButton) {
        awesomeLabel.text = "You're Awesome!"
        imageView.image = UIImage(named: "image0")
    }
}

