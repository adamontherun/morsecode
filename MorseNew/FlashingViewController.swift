//
//  FlashingLightViewController.swift
//  MorseNew
//
//  Created by adam smith on 7/14/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import UIKit

class FlashingViewController: MorsePlayerViewController {
    
    @IBOutlet weak var flasherView: UIView!
    
    
    // MARK: - View Controller Lifecycle Methods
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        configureFlasherView()
    }
    
    
    // MARK: - MorseCodePlayerDelegateProtocol Methods
    
    
    override func playSignal(forMorseEncodedSignal morseEncodedSignal: Signal) {
        
        switch morseEncodedSignal {
        case .On:
            self.flasherView.alpha = 1.0
        case .Off:
            self.flasherView.alpha = 0.0
        }
    }
    
    override func playerFinished() {
        
        UIView.animateWithDuration(0.4
            , animations: {
                self.flasherView.alpha = 0
        }) { _ in
            self.delegate?.closeModal()
        }
    }
    
    // Mark: - View Configuration Methods
    
    func configureFlasherView()
    {
        flasherView.layer.cornerRadius = flasherView.frame.size.width / 2;
        flasherView.alpha = 0.0
    }

}
