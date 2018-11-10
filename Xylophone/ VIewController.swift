//
//  ViewController.swift
//  Xylophone
//


import UIKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        var url : URL = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        
        switch sender.tag {
        case 1:
            url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
            break
        case 2:
            url = Bundle.main.url(forResource: "note2", withExtension: "wav")!
            break
        case 3:
            url = Bundle.main.url(forResource: "note3", withExtension: "wav")!
            break
        case 4:
            url = Bundle.main.url(forResource: "note4", withExtension: "wav")!
            break
        case 5:
            url = Bundle.main.url(forResource: "note5", withExtension: "wav")!
            break
        case 6:
            url = Bundle.main.url(forResource: "note6", withExtension: "wav")!
            break
        case 7:
            url = Bundle.main.url(forResource: "note7", withExtension: "wav")!
            break
        default:
            print("Wrong Node")
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
  

}

