//
//  ViewController.swift
//  Gabe's World
//
//  Created by Project Exploration on 4/15/19.
//  Copyright © 2019 Project Exploration. All rights reserved.
//

import UIKit
//4 -
import AVFoundation

class ViewController: UIViewController {

    //5 -
    var songPlayer = AVAudioPlayer()
    
    //6 -
    func prepareSongAndSession() {
        
        do {
            //7 - Insert the song form our Bundle into our AVAudioPlayer
            songPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Marshmello%2C%20Bastille%20-%20Happier%20(Lyrics)", ofType:"mp3")!))
            //8 - Prepare the song to be played
            songPlayer.prepareToPlay()
            
            //9 - Create an audio session
            let audioSession = AVAudioSession.sharedInstance()
            do {}
        } catch let sessionError {
            print(sessionError)
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play(_ sender: Any) {
    }
    @IBAction func pause(_ sender: Any) {
    }
    @IBAction func restart(_ sender: Any) {
    }
    
}

