//
//  ViewController.swift
//  PlayVideoDemo
//
//  Created by Jamario Davis on 5/21/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playVideo(_ sender: UIButton) {
        guard let url = Bundle.main.url(forResource: "testVideo", withExtension: "mp4") else {
            return
        }
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)

        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player

        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }
}

