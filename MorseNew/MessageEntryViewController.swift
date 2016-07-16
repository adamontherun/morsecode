//
//  ViewController.swift
//  MorseNew
//
//  Created by adam smith on 7/12/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import UIKit

class MessageEntryViewController: UIViewController, MorsePlayerViewControllerDelegateProtocol {
    
    enum SegueIdentifier: String {
        case segueToFlashingLightViewController
        case segueToBeepingViewController
    }
    
    @IBOutlet weak var textToEncode: UITextField!
    @IBOutlet weak var soundOrLightSwitch: UISwitch!
    
    
    // MARK: - View Controller Lifecycle Methods
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == SegueIdentifier.segueToFlashingLightViewController.rawValue ||
        segue.identifier == SegueIdentifier.segueToBeepingViewController.rawValue
        {
            
            guard let destinationViewController = segue.destinationViewController as? MorsePlayerViewController else { return }
            destinationViewController.signals = createSignals()
            destinationViewController.delegate = self
        }
    }
    
    
    // Mark: - Action Methods
    
    
    @IBAction func handleTransmitButtonTapped(sender: UIButton) {
        
        let segueIdentifier = determineSegueIdentifier()
        
        performSegueWithIdentifier(segueIdentifier, sender: sender)
    }
    
    
    // Mark: - MorsePlayerViewControllerDelegateProtocol Methods
    
    
    func closeModal() {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    // MARK: - Helper Methods

    
    private func determineSegueIdentifier() -> String {
        
        return soundOrLightSwitch.on ? SegueIdentifier.segueToFlashingLightViewController.rawValue : SegueIdentifier.segueToBeepingViewController.rawValue
    }
    
    private func createSignals() -> [Signal]? {
        
        guard let messageToEncode = textToEncode.text else { return nil }
        guard   let encodedMessage = MessageEncoder.encode(message: messageToEncode) else { return nil }
        return MorseTransmissionScheduler.scheduleTransmission(fromMessage: encodedMessage)
    }
    
}
