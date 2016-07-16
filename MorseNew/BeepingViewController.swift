//
//  BeepingViewController.swift
//  MorseNew
//
//  Created by adam smith on 7/15/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import UIKit
import AVFoundation

class BeepingViewController: MorsePlayerViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var signalImage: UIImageView!
    
    
    // MARK: - View Controller Lifecycle Methods
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        prepareAudioPlayer()
    }
    
    
    // MARK: - Audio Methods
    
    
    private func prepareAudioPlayer() {
        
        let alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("beep", ofType: "mp3")!)
        try! audioPlayer = AVAudioPlayer(contentsOfURL: alertSound)
        audioPlayer.prepareToPlay()
    }
    
    
    // MARK: - MorseCodePlayerDelegateProtocol Methods
    
    
    override func playSignal(forMorseEncodedSignal morseEncodedSignal: Signal) {
        
        switch morseEncodedSignal {
        case .On:
            audioPlayer.play()
            signalImage.alpha = 1.0
        case .Off:
            audioPlayer.pause()
            audioPlayer.currentTime = 0.0
            signalImage.alpha = 0.7
        }
    }
    
    override func playerFinished() {
        
        UIView.animateWithDuration(0.4, animations: {
            self.signalImage.alpha = 0
        }) { _ in
            self.audioPlayer.stop()
            self.delegate?.closeModal()
        }
    }
}
