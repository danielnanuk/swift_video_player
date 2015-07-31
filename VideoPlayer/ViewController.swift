//
//  ViewController.swift
//  VideoPlayer
//
//  Created by 周梦 on 7/30/15.
//  Copyright (c) 2015 野狗部落. All rights reserved.
//

import UIKit

import MediaPlayer

class ViewController: UIViewController {

    var mediaVideoPath = NSURL(fileURLWithPath: "http://7ktofw.com1.z0.glb.clouddn.com/Intro.mp4")

    var mediaPlayer = MPMoviePlayerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playVideo(){
        mediaPlayer = MPMoviePlayerController(contentURL: mediaVideoPath)
        mediaPlayer.prepareToPlay()
        mediaPlayer.view.frame = CGRectMake(0, 0, 320, 320)
        view.addSubview(mediaPlayer.view)
        mediaPlayer.play()
    }


}

