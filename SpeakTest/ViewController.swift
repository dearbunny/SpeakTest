//
//  ViewController.swift
//  SpeakTest
//
//  Created by Rose on 2021/3/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBAction func changeSlider(_ sender: Any) {
        speakRateText.text = String(format: "%.2f", speakRate.value)
        speakMultiplierText.text = String(format: "%.2f", speakMultiplier.value)
    }
    
    
    
    @IBOutlet weak var sayTextField: UITextField!
    @IBOutlet weak var speakMultiplierText: UILabel!
    @IBOutlet weak var speakRateText: UILabel!
    @IBOutlet weak var speakMultiplier: UISlider!
    @IBOutlet weak var speakRate: UISlider!
    
   
    
    @IBAction func SpeakButton(_ sender: UIButton) {
        let utterance = AVSpeechUtterance(string: sayTextField.text!)
        let synthesizer = AVSpeechSynthesizer()
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate = speakRate.value
        utterance.pitchMultiplier = speakMultiplier.value
        synthesizer.speak(utterance)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

