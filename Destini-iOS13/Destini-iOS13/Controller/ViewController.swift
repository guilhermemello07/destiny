//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var buttonOneLabel: UIButton!
    @IBOutlet weak var buttonTwoLabel: UIButton!
        
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.updateStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        textLabel.text = storyBrain.getStoryTitle()
        buttonOneLabel.setTitle(storyBrain.getChoiceOneButtonText(), for: .normal)
        buttonTwoLabel.setTitle(storyBrain.getChoiceTwoButtonText(), for: .normal)
    }
}

