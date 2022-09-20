//
//  ViewController.swift
//  Destini
//
//  Created by Diganta Som on 20/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choiceOneButton.setTitle(storyBrain.getChoice1(), for: .normal)
        choiceTwoButton.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}
