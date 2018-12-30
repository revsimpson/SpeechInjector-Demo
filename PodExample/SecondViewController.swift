//
//  SecondViewController.swift
//  PodExample
//
//  Created by Richard Simpson on 30/12/2018.
//  Copyright © 2018 Richard Simpson. All rights reserved.
//

import UIKit
import Foundation
import SpeechInjector

class SecondViewController: UIViewController {
 
    var injector : SpeechInjector!  // Allways initiate here !!!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let connector = SpeechConnector(words: "back","return") {
            if let navController = self.navigationController {
                navController.popViewController(animated: true)
            }
        }
       
        injector = SpeechInjector(connectors: [connector], vc: self, language: "en-US")
        injector.placeSpeechButton()
    }

}
