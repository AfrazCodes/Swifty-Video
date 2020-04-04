//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Afraz Siddiqui on 4/4/20.
//  Copyright © 2020 ASN GROUP LLC. All rights reserved.
//

import AVKit
import AVFoundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "train", ofType: "m4v")!))
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        layer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer)
        player.volume = 0
        player.play()

//        let vc = AVPlayerViewController()
//        vc.player = player
//        present(vc, animated: true)
    }


}

