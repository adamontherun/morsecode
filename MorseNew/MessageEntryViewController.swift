//
//  ViewController.swift
//  MorseNew
//
//  Created by adam smith on 7/12/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import UIKit

protocol MessageEntryViewControllerDelegateProtocol {
    func test(signals: [Signal])
}

class MessageEntryViewController: UIViewController {
    
    let segueToFlashingLightViewController = "segueToFlashingLightViewController"
    static let flashingLightViewControllerID      = "flashingLightViewControllerID"
    
    var entryDelegate:MessageEntryViewControllerDelegateProtocol?

    
    // MARK: - View Controller Lifecycle Methods


    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == segueToFlashingLightViewController {
            
            guard let destinationViewController = segue.destinationViewController as? FlashingLightViewController else { return }
            print("segueing")
            self.entryDelegate = destinationViewController
            //destinationViewController.signals = signals
        
        }
    }
    
    
    @IBOutlet weak var textToEncode: UITextField!
    @IBAction func handlePlayButtonTapped(sender: UIButton) {
        guard let messageToEncode = textToEncode.text else { return }
        guard   let encodedMessage = MessageEncoder.encode(message: messageToEncode) else { return }
        let signals = MorseTransmissionScheduler.scheduleTransmission(fromMessage: encodedMessage)

        entryDelegate?.test(signals)
    }
    
}

