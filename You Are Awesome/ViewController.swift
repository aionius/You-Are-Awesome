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
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
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
    
    var soundNumber: Int = -1
    var totalNumberOfSounds: Int = 6
    
    // audio player
    var audioPlayer: AVAudioPlayer?
    
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
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        // play audio
        var soundName: String = "sound\(nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds-1))"
        playSound(soundName: soundName)
        
    }
    
    func playSound(soundName: String) {
        /*
         if the code to the right of the equal sign is "not nil" create the let constant named "sound" and perform only the code in the first set of curlies, otherwise perform whatever is in the else clause
         */
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer?.play()
            } catch let error as NSError {
                print("Error: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        } else {
            print("Error: Could not read data from file.")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBounds)
        } while originalNumber == newNumber
        
        return newNumber
    }
}


