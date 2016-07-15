//
//  MorsePlayerViewController.swift
//  MorseNew
//
//  Created by adam smith on 7/15/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import UIKit

protocol MorsePlayerViewControllerDelegateProtocol {
    func closeModal()
}

class MorsePlayerViewController: UIViewController, MorseCodePlayerDelegateProtocol
{
    var delegate: MorsePlayerViewControllerDelegateProtocol?

    var signals: [Signal]?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let signalsQueue = signals {
            let player = SignalPlayer(signals: signalsQueue, delegate: self)
            player.play()
        }
    }

    func playSignal(forMorseEncodedSignal morseEncodedSignal: Signal) {}
    func playerFinished(){}
    
    @IBAction func handleCloseButtonTapped(sender: UIButton)
    {
        delegate?.closeModal()
    }
    
}
