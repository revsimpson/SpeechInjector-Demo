//
//  ViewController.swift
//  PodExample
//
//  Created by Richard Simpson on 28/12/2018.
//  Copyright © 2018 Richard Simpson. All rights reserved.
//

import UIKit
import Foundation
import SpeechInjector

class ViewController: UIViewController {
    
    var injector : SpeechInjector!  // Allways initiate here !!!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let connector = SpeechConnector(words: "hello","two") {
            print("gelukt")
        }
        
        let connector2 = SpeechConnector(words: "red color","wrecked","read") {  [weak self] in
            self.view.backgroundColor = UIColor.red
        }
        
        let connector3 = SpeechConnector(words: "normal","white","blank") { [weak self] in
             self.view.backgroundColor = UIColor.white
        }
        
        let connector4 = SpeechConnector(words: "go","goto", "go to") { [weak self] in
            self.performSegue(withIdentifier: "GoToSecondScreen", sender: nil)
        }
        injector = SpeechInjector(connectors: [connector,connector2,connector3,connector4], vc: self, language: "en-US")
        injector.placeSpeechButton()
    }
}

