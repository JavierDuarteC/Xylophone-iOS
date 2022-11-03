//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        print("start")
        sender.alpha = 0.5
        playSound(note: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            print("End")
            sender.alpha = 1
        }
    }

    func playSound(note: String) {
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

