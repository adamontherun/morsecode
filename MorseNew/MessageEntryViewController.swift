//
//  ViewController.swift
//  MorseNew
//
//  Created by adam smith on 7/12/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import UIKit

class MessageEntryViewController: UIViewController, MorsePlayerViewControllerDelegateProtocol {
    
    let segueToFlashingLightViewController = "segueToFlashingLightViewController"
    let flashingLightViewControllerID      = "flashingLightViewControllerID"
    
    @IBOutlet weak var textToEncode: UITextField!
    
    
    // MARK: - View Controller Lifecycle Methods
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == segueToFlashingLightViewController {
            
            guard let destinationViewController = segue.destinationViewController as? FlashingLightViewController else { return }
            destinationViewController.signals = createSignals()
            destinationViewController.delegate = self
        }
    }
    
    private func createSignals() -> [Signal]? {
        
        guard let messageToEncode = textToEncode.text else { return nil }
        guard   let encodedMessage = MessageEncoder.encode(message: messageToEncode) else { return nil }
        return MorseTransmissionScheduler.scheduleTransmission(fromMessage: encodedMessage)
    }
    
    func closeModal() {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
  }
