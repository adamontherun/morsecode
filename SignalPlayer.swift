//
//  SignalPlayer.swift
//  MorseCode
//
//  Created by adam smith on 7/7/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

/// Transmits a queue of Signals and plays them for the appropriate length of time
final class SignalPlayer: NSObject {
    
    var signalsQueue: [Signal]
    
    /// this is a standard base playback rate. A 'dot' should play for 92 ms.
    var basePlaybackRate = 0.092
    weak var delegate:MorseCodePlayerDelegateProtocol?
    
    init(signals: [Signal], delegate: MorseCodePlayerDelegateProtocol) {
        
        self.delegate = delegate
        signalsQueue = signals
    }
    
    func play() {
        
        startTimer(forSignal: signalsQueue.first!)
    }
    
    private func startTimer(forSignal signal: Signal) {
        
        let playbackRate = signal.duration(forBasePlaybackRate: basePlaybackRate)
        NSTimer.scheduledTimerWithTimeInterval(playbackRate, target: self, selector: #selector(updateDelegate), userInfo: nil, repeats: false)
    }
    
    @objc private func updateDelegate() {
        
        if signalsQueue.count > 0 {
            delegate?.playSignal(forMorseEncodedSignal: signalsQueue.removeFirst())
            guard signalsQueue.first != nil else {
                delegate?.playerFinished()
                return
            }
            startTimer(forSignal: signalsQueue.first!)
        }
    }
    
}