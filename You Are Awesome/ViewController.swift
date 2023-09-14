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
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber: Int = -1
    var messageNumber: Int = -1
    var totalNumberOfImages: Int = 9
    
    /*
     viewDidLoad is triggered by a system event that runs each time this screen loads
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.text = ""
    }
    
    /*
     showButtonPressed is triggered by a user action and runs each time the associated button is pressed
     */
    @IBAction func showButtonPressed(_ sender: UIButton) {
        
        let messages: [String] = ["You're Awesome!",
                                  "You're Great!",
                                  "You're Da Bomb!",
                                  "You're Fantastic",
                                  "Fabulous? That's You!",
                                  "You Make Me Smile",
                                  "I Think You're Magic!",
                                  "You Swifty!",
                                  "You Are a Legend!",
                                  "You Are Wonderful!"]
        
        //        // display random message and image using while loop
        //        var newMessageNumber = Int.random(in: 0...messages.count - 1)
        //
        //        while messageNumber == newMessageNumber {
        //            newMessageNumber = Int.random(in: 0...messages.count)
        //        }
        //        messageNumber = newMessageNumber
        //        messageLabel.text = messages[messageNumber]
        //
        //        var newImageNumber = Int.random(in: 0...totalNumberOfImages)
        //        while imageNumber == newImageNumber {
        //            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        //        }
        //        imageNumber = newImageNumber
        //        imageView.image = UIImage(named: "image\(imageNumber)")
        
        // display random message and image using repeat-while loop
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
    }
}


