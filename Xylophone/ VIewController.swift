//
//  ViewController.swift
//  Xylophone
//


import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        var url : URL
        
        switch sender.tag {
        case 1:
            url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
            print("1")
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
            url = URL(fileURLWithPath: "")
        }
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf : url)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
        
    }
}

